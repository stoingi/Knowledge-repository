
    weight = params["weight"].to_i
    height = params["height"].to_f


        BMI = weight / (height**2)
        @BMI_message = if BMI <= 15
          "You've go very severly underweight"
        elsif BMI >= 15 && BMI <= 16
            "You've got severly underweight"
        elsif BMI >= 16 && BMI <= 18.5
          "You've got underweight"
        elsif BMI >= 18.5 && BMI <= 25
          "You have a healthy weight"
        elsif BMI >= 25 && BMI <= 30
          "You have overweight"
        elsif BMI >= 30 && BMI <= 35
          "You've got obese class 1"
        elsif BMI >= 35 && BMI <= 40
          "You've got obese class 2"
          elsif BMI >= 40
          "You've got obese class 3"
        end
