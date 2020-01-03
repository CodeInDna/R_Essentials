# Factors

# What's a factor and why would you use it?
# The term factor refers to a statistical data type used to store categorical variables. The difference 
# between a categorical variable and a continuous variable is that a categorical variable can belong to 
# a limited number of categories. A continuous variable, on the other hand, can correspond to an infinite 
# number of values.
# A good example of a categorical variable is sex. In many circumstances you can limit the sex categories 
# to "Male" or "Female". (Sometimes you may need different categories. For example, you may need to conside
# chromosomal variation, hermaphroditic animals, or different cultural norms, but you will always have a 
# finite number of categories.)

# To create factors in R, you make use of the function factor(). First thing that you have to do is create a 
# vector that contains all the observations that belong to a limited number of categories. 
# Sex vector
sex_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert sex_vector to a factor
factor_sex_vector <- factor(sex_vector)

# Print out factor_sex_vector
factor_sex_vector
# [1] Male   Female Female Male   Male  
# Levels: Female Male

#########################################################################################################

# There are two types of categorical variables: a nominal categorical variable and an ordinal categorical variable.

# A nominal variable is a categorical variable without an implied order. This means that it is impossible to 
# say that 'one is worth more than the other'. For example, think of the categorical variable animals_vector 
# with the categories "Elephant", "Giraffe", "Donkey" and "Horse". Here, it is impossible to say that one stands 
# above or below the other).

# In contrast, ordinal variables do have a natural ordering. Consider for example the categorical variable 
# temperature_vector with the categories: "Low", "Medium" and "High". Here it is obvious that "Medium" stands 
# above "Low", and "High" stands above "Medium".

# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

##############################################################################################################

# Factor levels
# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
factor_survey_vector  # Levels: F M

# Recording the sex with the abbreviations "M" and "F" can be convenient if you are collecting data with pen and 
# paper, but it can introduce confusion when analyzing the data. At that point, you will often want to change the 
# factor levels to "Male" and "Female" instead of "M" and "F" for clarity.
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector  # Levels: Female Male

##############################################################################################################

# Generate summary for survey_vector
summary(survey_vector)
# Length     Class      Mode 
# 5 character character 

# Generate summary for factor_survey_vector
summary(factor_survey_vector)
# Female   Male 
# 2      3 

# Comparing Nominal Factors
# Male
male <- factor_survey_vector[1]

# Female
female <- factor_survey_vector[2]

# Battle of the sexes: Male 'larger' than female?
male > female # WARNING

##############################################################################################################

# Ordered Factors
# Since "Male" and "Female" are unordered (or nominal) factor levels, R returns a warning message, telling you that 
# the greater than operator is not meaningful. As seen before, R attaches an equal value to the levels for such factors.

# But this is not always the case! Sometimes you will also deal with factors that do have a natural ordering 
# between its categories. If this is the case, we have to make sure that we pass this information to R...

# Let us say that you are leading a research team of five data analysts and that you want to evaluate their performance. 
# To do this, you track their speed, evaluate each analyst as "slow", "medium" or "fast", and save the results in speed_vector.

# Create speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")

# Convert speed_vector to ordered factor vector
factor_speed_vector <- factor(speed_vector, ordered=TRUE, levels=c("slow", "medium", "fast"))

# Print factor_speed_vector
factor_speed_vector
# [1] medium slow   slow   medium fast  
# Levels: slow < medium < fast
summary(factor_speed_vector)
# slow medium   fast 
# 2      2      1 

# Comparing ordered factors
# Having a bad day at work, 'data analyst number two' enters your office and starts complaining that 'data analyst number five' 
# is slowing down the entire project. Since you know that 'data analyst number two' has the reputation of being a smarty-pants, 
# you first decide to check if his statement is true.
# The fact that factor_speed_vector is now ordered enables us to compare different elements (the data analysts in this case). 
# You can simply do this by using the well-known operators.

# Factor value for second data analyst
da2 <- factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
da2 > da5 # FALSE

