use context dcic2024
fun more-than-5(l):
  cases (List) l:
    |empty => empty
    |link(f, r) => 
      if string-length(f) > 5:
        link(f, more-than-5(r))
      else:
        more-than-5(r)
      end
  end
end

check:
  more-than-5([list: "computer", "maths", "english", "science"]) is
    [list: "computer", "english", "science"]
end

