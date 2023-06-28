def caesar_cipher(text)
  if text.match(/[A-Z]/)
    text.downcase
  end

  transform_ascii = text.bytes# [um array]

  caesar_swap = transform_ascii.each { |char| char - 3 }

  return caesar_swap.pack('C*')
end

p caesar_cipher('Oi tudo bem')

# 97 até 122 = a até z MÍNUSCULO
# 65 até 90 = A até Z MAÍUSCULO
# Solução = deixar tudo mínusculo (.downcase)

# Executar o programa: $ ruby caesar_cipher.rb