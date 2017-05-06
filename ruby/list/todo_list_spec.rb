require_relative 'TodoList'

describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  # it "stores the list items given on initialization" do
  #   expect(TodoList.new).to eq ["do the dishes", "mow the lawn"]
  # end

  it "adds an item to the list" do
    expect(list.add("mop")).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
  #   # list.delete("do the dishes")
    expect(list.del("do the dishes")).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.retrieve(0)).to eq "do the dishes"
  end


end