# frozen_string_literal: true

# linked list class implementation in ruby
class LinkedList
  attr_accessor :head, :tail, :size

  def initialize(data = nil)
    @head = Node.new(data)
    @tail = @head
    @size = 1
  end

  # adds a new node containing value to the END of the list
  def append(value)
    new_node = Node.new(value)
    @tail.next = new_node
    @tail = new_node
    @size += 1
  end

  # adds a new node containing value to the start of the list
  def prepend(value)
    new_node = Node.new(value)
    new_node.next = @head
    @head = new_node
    @size += 1
  end

  #  returns the node at the given index, head index is at 0
  def at(index)
    current_node = @head
    index.times do
      current_node = current_node.next
    end
    current_node
  end

  # removes the last element from the list
  def pop
    current_node = @head
    (@size - 2).times do
      current_node = current_node.next
    end
    @tail = current_node
    @tail.next = nil
    @size -= 1
  end

  # returns true if the passed in value is in the list and otherwise returns false.
  def contains?(value)
    current_node = @head
    size.times do
      return true if current_node.data == value

      current_node = current_node.next
    end
    false
  end

  # returns the index of the node containing value, or nil if not found.
  def find(value)
    current_node = @head
    index = 0
    size.times do
      return index if current_node.data == value

      current_node = current_node.next
      index += 1
    end
    nil
  end

  def to_s
    values = []
    current_node = @head
    size.times do
      values << current_node.data
      current_node = current_node.next
    end

    values.each do |value|
      print "( #{value} ) -> "
    end
    print "nil\n"
  end
end
