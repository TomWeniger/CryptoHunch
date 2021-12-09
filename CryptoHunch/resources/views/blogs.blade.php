@extends('mytemplate')

@section('title', 'Blogs')

@section('content')


    <section class="articles">
        <div class="article__content container container--pall">
            <h2>Latest Articles</h2>

            <div class="article__grid">
                <a href="#" class="article__item">
                    <div class="article__image" style="background-image: url('./images/bitcoin.jpg')"></div>
                    <div class="article__text">
                        <div class="article__author">By Kasia Kolo</div>
                        <div class="article__title">
                            Bitcoin is touted as the new digital gold by Michael Saylor. Is
                            he right?
                        </div>
                        <div class="article__description">
                            Michael Saylor is a brave man. Having recently taken out a bank
                            loan to buy 7000 bitcoin....
                        </div>
                    </div>
                </a>

                <a href="#" class="article__item">
                    <div class="article__image" style="background-image: url('./images/ethereum.jpg')"></div>
                    <div class="article__text">
                        <div class="article__author">By Tom Weniger</div>
                        <div class="article__title">Ethereum...</div>
                        <div class="article__description">Our .......</div>
                    </div>
                </a>

                <a href="#" class="article__item">
                    <div class="article__image" style="background-image: url('./images/solana.jpg')"></div>
                    <div class="article__text">
                        <div class="article__author">By Michael O Brien</div>
                        <div class="article__title">.....</div>
                        <div class="article__description">.....</div>
                    </div>
                </a>

                <a href="#" class="article__item">
                    <div class="article__image" style="background-image: url('./images/cardano.png')"></div>
                    <div class="article__text">
                        <div class="article__author">By Kasia Kolo</div>
                        <div class="article__title">.....</div>
                        <div class="article__description">.....</div>
                    </div>
                </a>
            </div>
        </div>
    </section>
    @endsection