require 'maths_evaluator'

describe '#maths_evaluator' do
  it "Returns '[1 + 1, 2]' for an input of '1 + 1'" do
    expect(maths_evaluator("1 + 1")).to eq (["1 + 1", 2])
  end

  it "Returns '[1 + 2, 3]' for an input of '1 + 2'" do
    expect(maths_evaluator("1 + 2")).to eq(["1 + 2", 3])
  end

  it "Returns '[1 - 1, 0]' for an input of '1 - 1'" do
    expect(maths_evaluator("1 - 1")).to eq(['1 - 1', 0])
  end
end
