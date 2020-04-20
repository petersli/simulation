require 'csv'

csv_text = File.read(Rails.root.join('db','data', 'backers.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    p = Pledge.new
    p.firstname = row['First Name']
    p.lastname = row['Last Name']
    p.amount = row[2].to_s.tr('$', '').to_f
    p.date = row[3]
    
    p.save
    puts "#{p.firstname} #{p.lastname} #{p.amount} #{p.date} saved"
end


puts "There are now #{Pledge.count} rows in the table"
