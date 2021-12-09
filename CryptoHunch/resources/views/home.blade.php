@extends('mytemplate')

@section('title', 'Home')

@section('content')

    <section class="hero">
        <div class="container">
            <div class="hero__image spacebody">
                <div class="shapes">
                    <div class="rocket-holder">
                        <img src="./images/bitcoinrocket.png" class="rocket" />
                    </div>

                    <div class="shape1 shape0"></div>
                    <div class="shape2 shape0"></div>
                    <div class="shape3 shape0"></div>
                    <div class="shape4 shape0"></div>
                    <div class="shape5 shape0"></div>

                    <div class="final">
                        <img src="https://i.postimg.cc/h4J6yzHs/planet10.png" class="planet10" />
                    </div>
                </div>
            </div>
            <div class="hero__text container--pall">
                <h1>Welcome to CryptoHunch!</h1>
                <p>
                    CryptoHunch is a LEARN & EARN web app with a community focused on
                    earning while learning from others! Check out our forecasting system
                    that is powered by our very own expert tippers.
                </p>

                <a href="#" class="button hero__cta">Request Invite</a>
            </div>
        </div>
    </section>

    <section class="feature">
        <div class="feature__content container container--pall">
            <div class="feature__intro">
                <h2>Why choose CryptoHunch?</h2>
                <p>
                    CryptoHunch provides educational summaries to investors on the pros
                    and cons of each currency. We also advise on where to buy them. Our
                    Tipsters not only provide tips but they are willing to put their
                    money where their mouth is!
                </p>
            </div>

            <div class="feature__grid">
                <div class="feature__item">
                    <div class="feature__icon">
                        <img src="./images/icon-online.svg" />
                    </div>
                    <div class="feature__title">Multiple Payment Gateways</div>
                    <div class="feature__description">
                        Topping up your account has never been easier. We accept Visa, BTC
                        and ETH.
                    </div>
                </div>

                <div class="feature__item">
                    <div class="feature__icon">
                        <img src="./images/icon-budgeting.svg" />
                    </div>
                    <div class="feature__title">Simple Account statements</div>
                    <div class="feature__description">
                        See exactly what your balance is made up of with our account
                        statement screen. Report downloads are coming soon!
                    </div>
                </div>

                <div class="feature__item">
                    <div class="feature__icon">
                        <img src="./images/icon-onboarding.svg" />
                    </div>
                    <div class="feature__title">Fast Onboarding</div>
                    <div class="feature__description">
                        Register and onboard within the hour with our easy KYC process.
                    </div>
                </div>

                <div class="feature__item">
                    <div class="feature__icon"><img src="./images/icon-api.svg" /></div>
                    <div class="feature__title">Instant API feeds</div>
                    <div class="feature__description">
                        CryptoHunch have access to some of the best coin data APIs in the
                        business and a team of in-house developers constantly looking to
                        improve our data sources.
                    </div>
                </div>
            </div>
        </div>
    </section>

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