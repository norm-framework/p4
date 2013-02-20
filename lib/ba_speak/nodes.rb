module BaSpeak

  class Node
    attr_reader :children, :name, :offset

    def initialize(token = {}, children=[])
      @children = children
      @name     = token[:value]
      @offset   = token[:offset]
    end

    def ==(other_node)
      name == other_node.name && offset == other_node.offset && children == other_node.children
    end
  end

  class RootNode < Node
    def initialize(children = [])
      super Hash.new, children
    end
        
    # def all_requirements
    #   files.groups.map{ |g| g.requirements }.flatten.map{ |r| r.expand }.flatten
    # end

    def files
      children
    end
  end
  
  class FileNode < Node
    attr_reader :uri
    
    def initialize(token={}, children=[])
      @uri = token[:uri]
      super token, children
    end
    
    def groups
      children
    end
    
    def ==(other_node)
      other_node.respond_to?(:uri) && uri = other_node.uri && children == other_node.children
    end
  end

  class GroupNode < Node
    def requirements
      children.map{ |r| r.expand }.flatten
    end
  end

  class RequirementNode < Node
    def examples
      # RowNode.new({ :offset => xx }, ['Role', 'Can or Cannot Create']),
      # RowNode.new({ :offset => xx }, ['PM',   'Can Create'          ]),
      # RowNode.new({ :offset => xx }, ['User', 'Cannot Create'       ])

      # [
      #   { '<Role>' => 'PM',   '<Can or Cannot Create>' => 'Can Create'    },
      #   { '<Role>' => 'User', '<Can or Cannot Create>' => 'Cannot Create' }
      # ]
      return [] if children.length == 0

      nodes   = children[0].rows
      headers = nodes[0].cells
      rows    = []

      nodes[1..-1].each do |node|
        row = {}
        node.cells.each_with_index do |value, index|
          row["<#{headers[index]}>"] = value
        end
        rows << row
      end

      rows
    end

    def expand
      return [name] if examples.length == 0

      requirements = []

      examples.each do |row|
        tmp = name.dup
        row.each_key do |key|
          tmp.gsub! key, row[key]
        end
        requirements << tmp
      end

      requirements
    end
  end

  class TableNode < Node
    def rows
      children
    end
  end


  class RowNode < Node
    def cells
      children
    end
  end

end
