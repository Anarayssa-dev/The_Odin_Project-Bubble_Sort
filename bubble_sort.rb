# Ordenação de array com o metodo bubble sort
def bubble_sort(array)
	array_ordenado = array
	p array_ordenado
	
	# Verificar a lista e ordernar
	array_ordenado.each_with_index do |valor, i|
		valor_par = array_ordenado[i+1]
		if valor_par
			if valor > valor_par
				array_ordenado[i] = valor_par
				array_ordenado[i+1] = valor
			end
		end
	end

	# Garantir que já está ordernado 
	array_ordenado.each_with_index do |valor, i|
                valor_par = array_ordenado[i+1]
                if valor_par
                        if valor > valor_par
                                bubble_sort(array_ordenado)
                      	end
		# Ao chegar no final da lista, significa que todos estão ordernados
		else
			return array_ordenado
                end
	end
end


# Exemplo
# p bubble_sort([4,3,78,2,0,1,2])
# p bubble_sort([3,80,200,1,0,44,66])
# p bubble_sort([2,4,2,2,1,2,4,6,20])
# p bubble_sort([-55,-100,-2,84,-84,3,2,0])
p bubble_sort([0.5,3.4,0.25,1.345,8,10,0,1])

