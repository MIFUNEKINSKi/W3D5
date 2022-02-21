  require "byebug"
module Searchable


  # 1) check base case 
  # 2) iterate through children & check each
  # 3) dont change target value

  def dfs(target_value)
    return self if self.value == target_value

    self.children.each do |child|
      leaf = child.dfs(target_value)
      return leaf unless leaf.nil?
    end

    return nil
  end


  def bfs(target_value)
    queue = []
    queue << self
    until queue.empty?
      first = queue.shift
      # debugger
      return first if first.value == target_value
      queue += first.children
    end
      nil
    
  end
end 

class PolyTreeNode
  include Searchable


  attr_reader :value, :parent, :children

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end 

  def parent=(new_parent)
    @parent.children.delete(self) if @parent != nil
    new_parent.children << self unless new_parent == nil
    @parent = new_parent
  end

  def add_child(child)
    child.parent=(self)
  end

  def remove_child(child)
    if child && !self.children.include?(child)
      raise "Tried to remove node that isn't a child"
    end

    child.parent = nil
    # debugger
  end

end