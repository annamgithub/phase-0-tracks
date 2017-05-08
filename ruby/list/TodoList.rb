class TodoList

def initialize(items)
  @items = items
end

def get_items
  @items
end

def add_item(item_to_add)
  @items.push(item_to_add)
end
 
def delete_item(item_to_delete)
  @items.delete(item_to_delete)
end

def get_item(items)
  @items[items]
end

end 


