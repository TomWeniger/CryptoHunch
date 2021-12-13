<?php

namespace App\Http\Controllers;
use App\Models\tip;

use Illuminate\Http\Request;



class TipsController extends Controller
{

    public $timestamps = false;
    
    public function index()
    {
        //get data from database
        $tipsdata = Tip::all();
            return view('tipsFolder.tips', ['tipsArray' => $tipsdata]);
    }


    public function orderTipsbyDirection()
    {
        $tipsdata = Tip::orderBy('tip_direction')->get();
            return view('tipsFolder.tips', ['tipsArray' => $tipsdata]);
    }

    public function orderTipsbyCoin()
    {
        $tipsdata = Tip::orderBy('coin_name')->get();
            return view('tipsFolder.tips', ['tipsArray' => $tipsdata]);
    }


    public function orderTipsbyReason()
    {
        $tipsdata = Tip::orderBy('tip_reason')->get();
            return view('tipsFolder.tips', ['tipsArray' => $tipsdata]);
    }

    public function wentUp(){

        $tipsdata = Tip::where('tip_direction' , 'up')->get();
            return view('tipsFolder.tips', ['tipsArray' => $tipsdata]);

    }
    

    public function create(){
        return view('tipsFolder.create');
    }


    public function showSingleTip($id){
        $tip = Tip::findOrFail($id);

        return view('tipsFolder.showSingleTip', ['tip' => $tip]) ;
    }

    public function store(){

        $tip = new Tip();

        $tip->tipper_name = request('tipper_name');
        $tip->title = request('title');
        $tip->tip_text = request('tip_text');
        $tip->coin_name = request('coin_name');
        $tip->price_at_time_of_tip = request('price_at_time_of_tip');
        $tip->calculated_tip_price = request('calculated_tip_price');
        

        // kasia: problem with ennum to be solved
        //$tipsave->tip_reason = request('tip_reason');
        //$tipsave->tip_direction = request('tip_direction');
   


       //error_log($tipsave);

        $tip->save();
      

        return redirect('/tips');
        // kasia: @csrf after clicking on submit the tip it redirects to tips now
    }

    public function edit($id){

        $tip = Tip::findOrFail($id);
        return view('tipsFolder.edit',['tip' => $tip]);

    }


    public function update($id){

        $tip = Tip::findOrFail($id);

        $tip->tipper_name = request('tipper_name');
        $tip->title = request('title');
        $tip->tip_text = request('tip_text');
        $tip->coin_name = request('coin_name');
        $tip->price_at_time_of_tip = request('price_at_time_of_tip');
        $tip->calculated_tip_price = request('calculated_tip_price');

        $tip->save();
        return redirect('/tips');
    }




    public function destroy($id){
        $tip = Tip::findOrFail($id);
        $tip ->delete();

        return redirect('/tips');
    }
    

    /*
    
    Kasia: add curly brakets & activate once DB has date
    public function latestTips
        $tipsdata = Tip::latest();
            return view('tipsFolder.tips', ['tipsArray' => $tipsdata]);


            
    */ 


   

};