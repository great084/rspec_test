require 'spec_helper'

RSpec.describe User do
  describe "#greet" do
    # before do
    let(:user){ User.new(params)}
    let(:params) { { name: "たろう", age: age} }
    context '12歳以下の場合' do
      let(:age){ 12 }
      it "ひらがなで答える" do
        expect(user.greet).to eq 'ぼくはたろうだよ。'
      end
    end
    context '13歳以上の場合' do
      let(:age){ 13 }
      it "漢字で答える" do
        expect(user.greet).to eq '僕はたろうです。'
      end
    end
  end
end
