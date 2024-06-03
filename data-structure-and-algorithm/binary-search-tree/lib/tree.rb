# frozen_string_literal: true

# Class to build balance binary search tree
class Tree
  attr_accessor :root

  def initialize(root = nil)
    @root = Node.new(root)
  end

  # Build a balance binary search tree
  def build_tree(arr, start_idx = 0, end_idx = arr.uniq.size - 1)
    arr.sort!.uniq! # Sort and remove duplicates
    return if start_idx > end_idx

    mid_idx = (start_idx + end_idx) / 2
    root = Node.new(arr[mid_idx])
    root.left = build_tree(arr, start_idx, mid_idx - 1)
    root.right = build_tree(arr, mid_idx + 1, end_idx)
    @root = root
  end

  # Print binary search tree
  # Method from https://www.theodinproject.com/lessons/ruby-binary-search-trees
  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end

  # function to insert a value to the tree
  def insert(value, node = @root)
    return if node.nil?
    return node if node.data == value

    if value > node.data
      insert(value, node.right)
      node.right = Node.new(value) if node.right.nil?
    else
      insert(value, node.left)
      node.left = Node.new(value) if node.left.nil?
    end
    node
  end

  # function to delete a value from the tree
  def delete(value, node = @root)
    # Base case
    return node if node.nil?

    if value < node.data
      node.left = delete(value, node.left)
    elsif value > node.data
      node.right = delete(value, node.right)
    else
      # one or zero child
      return node.right if node.left.nil?
      return node.left if node.right.nil?

      # two children
      temp = node.right
      until temp.left.nil?
        temp = temp.left
        temp
      end
      node.data = temp.data
      node.right = delete(temp.data, node.right)
    end
    node
  end

  # function to find a value
  def find(value, node = @root)
    return node if node.data == value

    node = if value > node.data
             node.right
           else
             node.left
           end
    find(value, node)
  end

  # function to output an array in level order
  def level_order(node = @root)
    queue = []
    data = []
    queue.push(node)
    until queue.empty?
      current = queue[0]
      yield current.data if block_given?
      data << current.data
      queue.push(current.left) unless current.left.nil?
      queue.push(current.right) unless current.right.nil?
      queue.shift
    end
    data unless block_given?
  end

  # function to output data of inorder traversal
  def inorder(node = @root, data = [], &block)
    return if node.nil?

    inorder(node.left, data)
    data << node.data
    current = node
    inorder(current.right, data)
    data.each(&block) if block_given?
    data
  end

  # function to output data of preorder traversal
  def preorder(node = @root, data = [], &block)
    return if node.nil?

    data << node.data
    preorder(node.left, data)
    current = node
    preorder(current.right, data)
    data.each(&block) if block_given?
    data
  end

  # function to output data of postorder traversal
  def postorder(node = @root, data = [], &block)
    return if node.nil?

    postorder(node.left, data)
    current = node
    postorder(current.right, data)
    data << node.data
    data.each(&block) if block_given?
    data
  end

  # function to return the max height
  def height(node = @root)
    return -1 if node.nil?

    leftmost = height(node.left)
    rightmost = height(node.right)
    [leftmost, rightmost].max + 1
  end

  # function to return the depth of a given node
  def depth(value, node = @root, depth = 0)
    if value == node.data
      return depth
    elsif value < node.data
      level = depth(value, node.left, depth + 1)
    else
      level = depth(value, node.right, depth + 1)
    end

    level
  end

  def balanced?(node = @root)
    left_sub_tree = height(node.left)
    right_sub_tree = height(node.right)

    return false if (left_sub_tree - right_sub_tree).abs > 1

    true
  end

  def rebalance(node = @root)
    arr = inorder(node)
    build_tree(arr)
  end
end
