require_relative 'observer_impl'

class TelescopeScheduler

  #일정이 변경되면 통지를 받을 수 있도록
  # 다른 클래스에 등록한다
  include Observable

  def initialize
    @observer_list = []
  end
  def add_viewer(viewer)
    @observer_list << viewer
  end

  def to_s
    @observer_list.each do |list|
      puts list
    end
  end

  def to_s2

  end
end

ts = TelescopeScheduler.new

ts.add_viewer('hello')
ts.add_observer('what the heck')

ts.to_s
