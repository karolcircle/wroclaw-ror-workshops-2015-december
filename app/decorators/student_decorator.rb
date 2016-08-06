class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    "%.2f" % (subject_item.subject_item_notes.average(:value) || 0)
  end

  def birthdate_format
    if birthdate 
      "#{birthdate.strftime("%Y-%m_%d")}"
    end
  end
end
