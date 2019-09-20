require 'maths_evaluator'

describe '#maths_evaluator' do
  it "Returns '[1 + 1, 2]' for an input of '1 + 1'" do
    expect(maths_evaluator("1 + 1")).to eq (["1 + 1", 2])
  end
end
