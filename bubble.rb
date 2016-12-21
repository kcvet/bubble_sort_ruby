 def swap(array, i)
 	x=array[i]
 	array[i]=array[i-1]
 	array[i-1]=x
 end

 

def bubble_sort(array_sort)
	sorted=false
	array_size=array_sort.size
	count=0
	while !sorted
		i=1
		while i<array_size
			if array_sort[i-1] > array_sort[i] 
			 swap(array_sort, i) 
			 
			 end 
				i+=1
		end
		count+=1
		count==array_size ? sorted=true : sorted=false

	end
	print array_sort.to_s
end 
def bubble_sort_by(array)
	sorted=false
		while !sorted
			sorted=true
			for i in 1..array.size-1
				swap = yield(array[i-1], array[i])
				if swap > 0
					array[i], array[i-1]= array[i-1], array[i]
					swap=false
				end
			end
		end
		print array.to_s
	end


     
    array = bubble_sort_by(["hi","hello","hey"]) do |left,right|
       left.length - right.length
       		end
