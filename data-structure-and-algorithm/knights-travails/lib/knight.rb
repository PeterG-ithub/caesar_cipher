# frozen_string_literal: true

# Knight class
class Knight
  attr_accessor :position, :children

  def initialize(position = [4, 4])
    @position = position
    @children = []
    @history = []
  end

  def knight_moves(position, target)
    queue = []
    visited = []
    x_axis = [2, 2, -2, -2, 1, 1, -1, -1]
    y_axis = [-1, 1, 1, -1, 2, -2, 2, -2]
    queue.push(position)
    visited.push((position[0] + 1) + (position[1] * 8))
    target_id = ((target[0] + 1) + (target[1] * 8))
    knight_tree = Knight.new(position)
    root = knight_tree
    until queue.empty?
      8.times do |idx|
        if (position[0] + x_axis[idx]).between?(0, 7) && (position[1] + y_axis[idx]).between?(0, 7) && !visited.any?((position[0] + x_axis[idx] + 1) + (position[1] + y_axis[idx]) * 8)
          queue.push([position[0] + x_axis[idx], position[1] + y_axis[idx]])
          visited.push((position[0] + x_axis[idx] + 1) + (position[1] + y_axis[idx]) * 8)
          knight_tree.children.push(Knight.new([position[0] + x_axis[idx], position[1] + y_axis[idx]]))
          break if visited.any?(target_id)
        end
      end
      queue.shift
      position = queue[0]
      knight_tree = search(position, root)
    end
    @history = []
    search(target, root)
    puts "You made it in #{@history.size} moves! Here's your path:"
    @history.each { |x, y| puts "[#{x},#{y}]" }
  end

  # search for the node base on position
  def search(position, node)
    @history << node.position
    return node if position == node.position
    return node if node.children.empty?

    node.children.map do |child|
      node = search(position, child)
      break if position == node.position

      @history.pop
    end
    node
  end
end
