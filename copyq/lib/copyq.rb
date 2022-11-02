class CopyQ
  attr_accessor :range

  def self.read
    new.read
  end

  def initialize
    @range = 0..7
  end

  def self.select(index)
    new.select(index)
  end

  def read
    range.each do |index|
      output[index] = `/usr/bin/copyq tab clipboard read #{index}`
    end
    output
  end

  def select(index)
    `/usr/bin/copyq tab clipboard select #{index}`
  end

  def range
    @range
  end

  private

  def output
    @output ||= {}
  end
end