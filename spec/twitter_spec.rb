require 'spec_helper'

RSpec.describe WeatherBot do
  it 'エラーなく予報をツイートすること' do
    # twitter_clientのモックを作る
    twitter_client_mock = double('Twitter client')
    # updateメソッドが呼び出せるようにする
    allow(twitter_client_mock).to receive(:update)

    weather_bot = WeatherBot.new
    # twitter_clientメソッドが呼ばれたら上で作ったモックを返すように実装を書き換える
    allow(weather_bot).to receive(:twitter_client).and_return(twitter_client_mock)

    expect{ weather_bot.tweet_forecast }.not_to raise_error
  end
end