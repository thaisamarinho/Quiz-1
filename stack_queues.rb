# 2. Stacks & Queues: Explain the difference between a stack and a queue. Write a Ruby class called Stack and another Ruby class called Queue. Each class should have two instance methods `add` and `remove` to add an element to the stack or queue or to remove an element from the stack or queue. Make sure that each class behaves properly as per definitions of stacks and queues.


# Answer:

# Stack is a data structure where the LAST element to come IN is the FIRST element to go OUT.

# Queue is a data structure where the FIRST element to come IN is the FIRST element to go OUT.


class Stack

  def initialize(array)
    @array = array
  end

  def add(element)
    @array.push(element)
    return @array
  end

  def remove
    @array.pop
    return @array
  end
end

class Queue
  def initialize(array)
    @array = array
  end

  def add(element)
    @array.push(element)
    return @array
  end

  def remove
    @array.shift
    return @array
  end
end


stack = Stack.new(array=[])
p stack.add(1)
p stack.add(2)
p stack.add(4)
p stack.remove
p stack.remove

queue = Queue.new(array=[])
p queue.add(1)
p queue.add(2)
p queue.add(3)
p queue.remove
p queue.remove
