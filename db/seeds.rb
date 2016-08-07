puts "Seeds: start"
TEACHER_TITLES = %w(Dr. Prof. TA)
PAYMENT_STATUS = %w(paid unpaid)
User.create!(email: 'admin@admin.com',password: 'adminadmin')

3.times do
  Teacher.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    academic_title: TEACHER_TITLES.sample
  )
end

teachers = Teacher.all
5.times do
  SubjectItem.create!(
    title: Faker::Lorem.sentence,
    teacher: teachers.sample
  )
end

25.times do
  Student.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

students = Student.all
SubjectItem.all.each do |subject_item|
  subject_item.students << students.sample(rand(1..4))
end

SubjectItem.all.each do |subject_item|
  subject_item.students.each do |student|
    rand(1..5).times do
      subject_item.subject_item_notes << SubjectItemNote.create(student: student,
                                                                subject_item: subject_item,
                                                                value: rand(1..6))
    end
  end
end

15.times do
  Payment.create!(
    paid: PAYMENT_STATUS.sample, 
    date_payment: Faker::Date.between(2.years.ago, 1.year.from_now),
    student_id: rand(1..25)
  )
end

payments = Payment.all

puts "Seeds: done"
