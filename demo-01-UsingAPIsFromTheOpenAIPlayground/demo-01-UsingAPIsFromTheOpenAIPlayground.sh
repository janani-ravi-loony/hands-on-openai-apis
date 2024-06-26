#############################################
Exploring the Open AI Playground
#############################################

# Go to

https://platform.openai.com/docs/overview

# Show all the different API possible here

# Click on "Overview" on the left and you get a summary of all the models

# Click on "Models" and see what models are available to use

# Click through to one of the models -> will take us to the intro page for all models

# Look at the all the models and discuss them

# Look at the details

context window

input and output modalities

price per 1mm tokens

# Notice that every model has versions (with release dates)

------------------------------------------------------
# You need to pay to use these APIs

# Click on the account on the top-right

# Click on billing and show that we have about $5 worth of spend left

------------------------------------------------------

# Click on Dashboard on the top-right and this will take you to the Open AI Playground

# Note that there are 3 options on the left - explain each

Chat
Assistants
Completions

#############################################

# With access to built-in tools like code interpreter, the Assistants API simplifies deterministic tasks like data analysis or code development. The Chat Completions API, on the other hand, offers agility and efficiency catering to scenarios where simplicity and complete control of the architecture is important.

# Notes:
# The Assistants API is a powerful tool available on Azure OpenAI that enables developers to create sophisticated AI assistants within their applications. Key features include: 
# Instructions: Developers can provide specific instructions to tailor the personality and capabilities of the assistant. 
# Tools: Assistants can leverage various tools, including those hosted by OpenAI (such as Code Interpreter and Knowledge Retrieval) or custom-built tools hosted externally. 
# Threads: Assistants can access persistent threads, allowing them to maintain context across multiple interactions. Threads store messages and automatically handle content truncation to fit within the model's context window limit. 
# Files: Assistants have access to files in different formats, either during their creation or within conversation threads with users. 
# Advanced Features: The Assistant API offers advanced features such as conversation threading, code execution, and data retrieval, making it suitable for applications requiring detailed context management and prolonged conversations. 
# Independence: Each assistant can initiate and manage multiple independent message threads, enhancing its multitasking capabilities. 
# Limitations: Notably, the Assistants API does not offer model controls on things like top_p and temperature, which may affect the variability and creativity of responses. 

# The Chat Completions API, another offering available on Azure OpenAI, serves a different purpose compared to the Assistant API. Key characteristics of the Chat Completions API include: 

# Response Generation: The Chat Completions API generates responses for a given dialog based on the provided message history. It requires input in a specific format corresponding to the conversation context. 
# Agility: It is more suitable for agile and direct responses, making it ideal for scenarios where quick, straightforward interactions are preferred. 
# Efficiency: The Chat Completions API is lightweight and efficient, making it suitable for simple AI applications where resource consumption is a concern. 

#############################################

# Let's work with the Chat API first

--------------------------------------------------------
Open AI Playground
--------------------------------------------------------

# Click on the models drop down and show all the models (make sure you click on show more)

# Go back to the gpt-3.5-turbo model

"Model": "gpt-3.5-turbo-16k"

# Don't set anything in system

# Prompt

```
I'd like to learn more about prompt engineering, how do you recommend I start?
```

# Show the response (note the latency and the number of tokens in the response)

# Hover over "Maximum Tokens" and show what this parameter is

# Show that the maximum token length is 16K for this model

# Now change the maximum length to 1000

# Remove the old response (click on the - sign)

# Submit the same prompt again

# You will get a much longer response (note the latency and the number of tokens in the response)

--------------------------------------------------

# Clear up all the previous prompts

# Set max tokens back to 256

# Change the model

"Model": "gpt-4-turbo"

# Show that the maximum token length is 4K for this model


# Setting a Persona

# > In the top "System" past this (Here we are trying to give the AI a persona)

Respond to all queries and situations as if you are a classically trained Shakespearean actor who views everyday life through a dramatic, theatrical lens. Use grandiose language, incorporate "thee's" and "thou's", and sprinkle in references to Shakespeare's works where appropriate. Treat mundane situations with the gravity and passion of epic stage dramas, and don't hesitate to break into soliloquies or dramatic monologues. Exaggerate emotions and find profound meaning in ordinary events. Remember to maintain this persona consistently, responding to modern concepts and technologies as if they were part of a grand theatrical production.


# > Click "Save" from the top right

Name: Shakespearean Thespian


# > Click "Save"

# Observe now we have the pre-text of a Shakespearean Thespian near the save button

# Click on the drop down and show

# > Now in the editor paste the below questions and click "Submit"

# Make all of these questions part of the same thread

"""
Q: How would you poetically describe the relationship between classes and objects in object-oriented programming?

Q: What's your theatrical take on the importance of commenting code?

Q: I am trying to figure out what to do today - do you have any ideas?

"""

----------------------------------------------------------------
# Tinkering with Temperature
----------------------------------------------------------------
# Clear all the previous questions and answers


# Hover over the temperature parameter and show the explanation
# (Note: the default temperature is 1)

# > Change the persona

"""
Respond to all queries and situations as if you are a deeply paranoid individual who believes that nothing is as it appears on the surface. Interpret every piece of information, no matter how mundane, as part of a grand, interconnected conspiracy orchestrated by powerful, secretive organizations.  Offer alternative explanations for everyday occurrences, no matter how far-fetched they might seem. Express a mix of suspicion, excitement, and a sense of superiority for being "in the know" about these hidden truths. Encourage others to question official narratives and "do their own research." Remember to maintain this persona consistently, viewing even the most ordinary topics through the lens of complex conspiracy theories.

"""

# > Click "Save" from the top right

Paranoid Panda

# > Click "Save as New"

"""
Can you describe the process of writing a "Hello, World!" program in Python?
"""

# > Click "Submit"

# Note that it's quite a paranoid response, quite flowery

# IMPORTANT: Clear the response


-----------------
# > Now hover over "Temperature"

# > Make the temperature 0

# > Click "Save" > "Update"

# Observe the response is more general/soft 

"""
Can you describe the process of writing a "Hello, World!" program in Python?
"""

# The response is paranoid but more mundane

# IMPORTANT: Clear the response

-----------------

# > Make the temperature 1.2

"""
Can you describe the process of writing a "Hello, World!" program in Python?
"""

# The response is flowery, you may find words that are not really words

# IMPORTANT: Clear the response

-----------------

# > Make the temperature 2

"""
Can you describe the process of writing a "Hello, World!" program in Python?
"""

# Observe the response is totally random

# IMPORTANT: Change the temperature back to 1

# "Save" and "Update"

# > Hover over "Stop sequences", "Top P", "Frequency penalty", "Presence penalty"
# (Note: will show these in subsequent demos using API)

# > Click on "View code" and we get the code in python click on the drop down to see all the supported programming languages 

# > Click on "Share" and observe we get a link to share with others

# Click on "Time" icon and see the history of the chat


----------------------------------------------------------------
# Stop sequences
----------------------------------------------------------------

# Hover over stop sequences 

# Change model to "gpt-3.5-turbo"

"""
Can you please give me some possible names for a book that I have written - a teenage fantasy novel?
"""

# It should give you a list of 10 names

# Add a stop sequence

5

# Enter the same prompt again

# Should get only 4 items in the list

# Remove the sequence and add these terms

Quest
Mystic
Magic

# Enter the same prompt again

# The output will likely terminate abrupty when one of these words are encountered



----------------------------------------------------------------
# Top-p
----------------------------------------------------------------

# The top-p parameter in large language models (LLMs) is a way to control the randomness and diversity of the text they generate. It works by setting a probability threshold for the tokens (words) the model considers when predicting the next word in a sequence.

# Here's a breakdown of how it works:

# Values: Top-p is a value between 0.0 (0%) and 1.0 (100%).
# Probability Threshold: It represents the minimum cumulative probability that the considered tokens must add up to.
# Selection Process:
# The LLM ranks all possible tokens based on their individual probabilities.
# It starts considering the highest probability token.
# It keeps adding tokens to the pool as long as their combined probability reaches or exceeds the top-p threshold.
# Once the threshold is met, the model randomly picks the next word from this limited pool of high-probability tokens.
# Impact on Output:

# Lower Top-p: A lower value (closer to 0) creates a stricter selection process. Only the absolute top tokens with the highest probabilities are considered, leading to more predictable and safer outputs, but less creative freedom.
# Higher Top-p: A higher value (closer to 1) allows the model to include more tokens with slightly lower probabilities. This increases the diversity of potential outputs and can be useful for generating creative text formats like poems or code.


# Set top-p to 0.1


"""
Can you give me a short poem on how programming is fun?

"""

# Set top-p to 0.5

# Same prompt (delete the old response)

# Set top-p to 1.0

# Same prompt (delete the old response)


----------------------------------------------------------------
# Frequency penalty and Presence penalty
----------------------------------------------------------------

# Hover over the presence penalty and show what it is

# Hover over the frequency penalty and show what it is

# Set frequency penalty to 2

"""
Can you give me a short poem on how programming is fun?

"""

# New words tend to be used


# Set frequency penalty to 0

# Set presence penalty to 2

# Same prompt

# Poem should be more interesting about diverse topics


----------------------------------------------------------------
# Function calling
----------------------------------------------------------------

# Select any latest model

# Use the broom to clear everything

"""
Can you give me the latest stock prices for Microsoft, Google, and Nvidia?
"""


# Should say that it has no realtime information

# Click on + Add function

# From the examples choose "get_stock_price" and hit save

# Same prompt - notice that you get API call placeholders which you can use to actually make API calls


# Let's define our own function API

# Click on +Add function

{
  "name": "get_employee_salary",
  "description": "Retrieve salary information for a specific employee",
  "parameters": {
    "type": "object",
    "properties": {
      "employee_name": {
        "type": "string",
        "description": "The name of the employee"
      },
      "include_benefits": {
        "type": "boolean",
        "description": "Optional parameter to include benefits information in the response (default: false)"
      }
    },
    "required": [
      "employee_name"
    ]
  } 
}

# Save

"""
Can you get me the salary details for Peter, Jasmine, Pasmina, and Lawrence
"""

# Follow up

"""
Can you include benefits for each employee?
"""

----------------------------------------------------------------
# Working with the legacy completions API
----------------------------------------------------------------

# Switch over to the Completions API using the link on the left

# IMPORTANT: Get rid of the presets on top

# Show that the view is different

# Click on the Models - show the list is different

# Select the latest 3.5 model


# There are additional parameters here that you can tweak - hover over the new ones

Best of
Inject start text
Inject restart text
Show probabilities

# Don't change any setting yet

"""
How can we help our soccer players build mental resilience and stay composed during high-pressure situations like penalty shootouts?
"""

# Show the response (highlighted in green)

------------------

# Hover over "Best of"

# Change "Best of" to 4

"""
Can you give me an example news headline in the year 2050? 
"""

# Change the "Best of" back to 1

------------------

# Change the "Inject start text" to JSON

# Prompt

"""
Can you please generate fictitious data for 5 employees?
"""

# Note that when you hit Submit "JSON" is appended to this prompt

# You should get the results in the JSON format

# Clear everything in the text box

# Change the "Inject start text" to CSV

# Prompt

"""
Can you please generate fictitious data for 5 employees?
"""

# See results in CSV format

# IMPORTANT: Remove CSV from "Inject start text"

------------------
# Click on "Show probabilities"

Full spectrum

"""
Can you write a short poem on the trials and tribulations of a fridge?
"""


# > Click on several green, yellow, and red words to get more details

# > Clear all the texts

---------------------
# > Reduce the temperature to 0.1


"""
Can you write a short poem on the trials and tribulations of a fridge?
"""

# Observe we have no a lot more of greens in the text compared to before.

# Hover over some of the different colors and show

---------------------
# Increase the temperature to 1.3

"""
Can you write a short poem on the trials and tribulations of a fridge?
"""


# Observe we have much more variety in the response in terms of colors

# Click on some of the words of different colors and show



----------------------------------------------------------------
# The Assistants API
----------------------------------------------------------------

# Click on "Create Assistant"

Name: Data Visualizer and Interpreter
Instructions: You are an assistant that helps with data visualization and interpretation of supermarket sales data. Please use Python code to generate visualizations and provide narrative summaries to help interpret data
Model: gpt-4o

# Hover over each and show what they are

Functions
Code interpreter
Retrieval

# Enable the following

Code interpreter

# Upload the supermarket_sales.csv file

# Once done ask questions

"""
Can you tell me what are the different types of customers this supermarket serves?
"""

# Follow up with

"""
Can you give me a visualization of the total sales for each product line?
"""

# Likely very glitchy


-------------------------------------

# Open up the logs on the right

# Scroll to the top

# Expand the first few post requests

# Expand a few GET requests with meaningful infos (Get Messages has useful info)

























