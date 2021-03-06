def mystery1(n)
  if n == 1
    return n
  else
    return n + mystery1(n-1)
  end
end


def mystery2(n)
  if n < 10
    return n
  else
    return (n%10) + mystery2(n/10)
  end
end

def mystery2B(n)
  if n < 10 && n > -10
    return n
  elsif n >= 10
    return (n%10) + mystery2(n/10)
  else m = n.abs
    a = (m%10) + mystery2(m/10)
    return -a
  end
end

def mystery2C(n)
  if n>=0
    if n < 10
      return n
    else
      return (n%10) + mystery2(n/10)
    end
  else
    if n > -10
      return n
    else m = n.abs
      return -((m%10) + mystery2(m/10))
    end
  end
end

def mystery3(n)
  if n == 0
    return 100
  elsif n == -1
    return 200
  end
  if n%2 == 0
    return mystery3(n/2)
  else
    return mystery3(n-1)
  end
end

def mystery4(b,e)
  if e == 0
    return 1
  else
    return b * mystery4(b,e-1)
  end
end

def mystery5(s)
  if s.length == 0
    return ""
  else
    return "*" + mystery5(s[1..-1])
  end
end

#Changing only alphabetic characters to * using RegEx (regular expression)
def mystery5B(s)
  s.gsub!(/[^a-zA-Z]/, '')
  if s.length == 0
    return ""
  else
    return "*" + mystery5(s[1..-1])
  end
end

#Changing only alphabetic characters to * without RegEx
def mystery5C(s)
  alpha_all = ("A".."Z").to_a.concat ("a".."z").to_a
  if s.length == 0
    return ""
  else
    if alpha_all.include?(s[0])
      return "*" + mystery5C(s[1..-1])
    else
      return mystery5C(s[1..-1])
    end
  end
end


def mystery6(s)
  if s == nil || s.length == 0
    return ""
  else
    space = 0
    until space >= s.length || s[space] == " "
      space += 1
    end
    return mystery6(s[(space+1)..-1]) + " " + s[0...space]
  end
end


def mystery6B(s)
  if s == nil || s.length == 0
    return ""
  else
    return mystery6B(s[1..-1]) + s[0]
  end
end
