def fibs(pos)
	n = [0,1]
	i = 1
	(pos-1).times do
		n.push(n[i] + n[i-1])
		i += 1 
	end 
	n[pos]
end


def fibs_rec(pos)
	(pos == 1 or pos == 2) ? 1 : fibs_rec(pos-2) + fibs_rec(pos-1)  
end