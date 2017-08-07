require('minitest/autorun')
require_relative('./cohort_student')

class TestCohortStudent < MiniTest::Test

  def test_student_name
    student = CohortStudent.new( "Iain", 15 )
    student.set_student_name("Allyson")
    assert_equal( "Allyson", student.student_name() )
  end

  def test_cohort_number
    cohort = CohortStudent.new( "Iain", 15 )
    cohort.set_student_name( 14 )
    assert_equal( 15, cohort.cohort_number() )
  end

  def test_student_speech
    speech = CohortStudent.new( "Iain", 15 )
    assert_equal( "I can talk", speech.student_speech())
  end

  def test_fave_language
    language = CohortStudent.new( "Iain", 15)
    assert_equal("I Love Ruby", language.prog_lang("Ruby"))
  end

  # def test_student_speech
  #   speech = CohortStudent.new("Iain", 15, "I can talk")
  #   assert_equal("I can talk", speech.speech_string())
  # end

end
