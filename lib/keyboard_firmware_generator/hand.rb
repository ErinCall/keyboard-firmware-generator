module KeyboardFirmwareGenerator
  class Hand
    attr_reader :name
    attr_reader :columns

    def initialize(name, &block)
      @name = name.to_s
      @columns = []
      instance_eval &block
    end

    def column(index, &block)
      if columns.map(&:index).include? index
        columns.find { |column| column.index == index }.instance_eval &block
      else
        columns << Column.new(index, &block)
      end
    end
  end
end
