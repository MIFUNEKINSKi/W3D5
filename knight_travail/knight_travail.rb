class KnightPathFinder
  attr_reader :starting_pos
  def initialize(starting_pos)
    @starting_pos = PolyTreeNode.new
  end 

  MOVES = [
    [-2, -1],
    [-2,  1],
    [-1, -2],
    [-1,  2],
    [ 1, -2],
    [ 1,  2],
    [ 2, -1],
    [ 2,  1]
  ]

  def build_move_tree # calling poly tree node.new with that pos. New tree node for every pos.
    PolyTreeNode.new([0,0])
  end


  def valid_position?(pos)

  end
end 



class PolyTreeNode

  def self.root_node 
    @starting_pos 
  end 

  def initialize(position)
    @root_node = root_node
    @path = self.find_path(starting_pos)
    # @value = value
    # @parent = nil
    # @children = []

  end 

  # def parent=(new_parent)
  #   @parent.children.delete(self) if @parent != nil
  #   new_parent.children << self unless new_parent == nil
  #   @parent = new_parent
  # end

  # def add_child(child)
  #   child.parent=(self)
  # end

  # def remove_child(child)
  #   if child && !self.children.include?(child)
  #     raise "Tried to remove node that isn't a child"
  #   end

  #   child.parent = nil
  #   # debugger
  end



end 

