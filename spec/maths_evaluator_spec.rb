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

  it "Returns '[2 - 1, 1]' for an input of '2 - 1'" do
    expect(maths_evaluator("2 - 1")).to eq(['2 - 1', 1])
  end

  it "Returns '[2 * 1, 2]' for an input of '2 * 1'" do
    expect(maths_evaluator("2 * 1")).to eq(['2 * 1', 2])
  end

  it "Returns '[25 / 5, 5]' for an input of '25 / 5'" do
    expect(maths_evaluator("25 / 5")).to eq(['25 / 5', 5])
  end

  it "returns '["", 0]' when given a blank string" do
    expect(maths_evaluator("")).to eq(["", 0])
  end

  it "returns '['1', 1] for an input of '1'" do
    expect(maths_evaluator('1')).to eq(['1', 1])
  end
end
