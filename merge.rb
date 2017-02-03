def merge(arrone, arrjay)
  o = 0
  j = 0
  result = []
  p arrone, arrjay
  while !((o == ((arrone.length))) || (j == ((arrjay.length))))
    if arrone[o] <= arrjay[j]
      result.push(arrone[o])
      o +=1
    else
      result.push(arrjay[j])
      j += 1
    end
  end
  if o == ((arrone.length))
    result += arrjay.slice(j, ((arrjay.length) -(j-1)))
  else
    result += arrone.slice(o, ((arrone.length) -(o-1)))
  end
end

def merge_sort (arr)
  if arr.length > 1
    mid = arr.length/2
    arr1 = arr[0...mid]
    arr2 = arr[mid..-1]
    p arr1, arr2
    arr = merge((merge_sort arr1), (merge_sort arr2))
  end
  arr
end

p merge_sort([3,7,2,5,9,12,3,1])
