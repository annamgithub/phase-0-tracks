class TodoList

attr_reader :list_items

  def initialize(list_items)
    @list_items = list_items
  end

  def add(item)
    @list_items.push(item)
  end

  def del(item)
    @list_items.delete(item)
    @list_items
  end

  def retrieve(item)
    @list_items[item]
  end

end
