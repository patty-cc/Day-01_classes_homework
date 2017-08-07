class CohortStudent

  def initialize ( student_name, cohort_number)
    @cohort_number = cohort_number
    @student_name = student_name
  end

  def student_name
    return @student_name
  end

  def cohort_number
    return @cohort_number
  end

  def student_speech
    return "I can talk"
  end

  def prog_lang(language)
    return "I Love #{language}"
  end

  def set_student_name(name)
    return @student_name = name
  end

  def set_cohort_number(number)
    return @cohort_number = number
  end

end
