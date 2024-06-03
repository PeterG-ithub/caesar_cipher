# frozen_string_literal: true

require_relative '../lib/node'
require_relative '../lib/tree'

# node = Node.new(10)
# node.left = 5
# node.right = 15

# p node

tree = Tree.new(11)

tree.build_tree([4, 5, 2, 1, 10, 99, 100, 51, 32, 459])
tree.pretty_print
p tree.balanced?
tree.insert(500)
tree.insert(100)
tree.insert(600)
tree.insert(700)
tree.insert(3)
p tree.balanced?
tree.pretty_print
tree.rebalance
p tree.balanced?
tree.pretty_print

# tree.build_tree((Array.new(15) { rand(1..100) }))
# tree.pretty_print
# tree.insert(rand(1..100))
# tree.insert(rand(1..100))
# tree.insert(rand(1..100))
# tree.pretty_print

# tree.delete(100)
# p tree.find(1)

# tree.pretty_print
# p tree.level_order
# p tree.inorder
# tree.preorder { |val| p val }
# p tree.postorder
# p tree.height
p tree.depth(500)
