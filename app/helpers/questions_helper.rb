module QuestionsHelper
    def question_header(question)
      if question.persisted?
        "Edit #{question.test.title} "
      else
        "Create new #{question.test.title} "
      end
    end
end
