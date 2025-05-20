#############################################
Exploring the Open AI Playground
#############################################

# Go to

https://platform.openai.com/docs/overview

# Show the latest Open AI models

# Click on each model

GPT-4.1
o4-mini
o3

# Tokens in OpenAI

https://help.openai.com/en/articles/4936856-what-are-tokens-and-how-to-count-them


# Click through to one of the models -> will take us to the intro page for all models

# Look at the all the models and discuss them

# Look at the details

context window

input and output modalities

price per 1mm tokens

# Notice that every model has versions (with release dates) - click on the drop down next to the model to get the release date

# Tokens can be thought of as pieces of words. Before the API processes the request, the input is broken down into tokens. These tokens are not cut up exactly where the words start or end - tokens can include trailing spaces and even sub-words. Here are some helpful rules of thumb for understanding tokens in terms of lengths:

# 1 token ~= 4 chars in English
# 1 token ~= ¾ words
# 100 tokens ~= 75 words

https://openai.com/api/pricing/

------------------------------------------------------
# You need to pay to use these APIs

# Click on the account on the top-right

# Click on billing and show that we have about $5 worth of spend left

------------------------------------------------------

# Click on Playground on the top-right and this will take you to the Open AI Playground

# Note that there are 3 options on the left - explain each

Prompts
Images
Realtime
Assistants
TTS

#############################################
# Reasoning models

# Reasoning models in AI are specialized systems, often advanced language models, designed to solve complex problems by breaking them down into smaller, logical steps, much like human methodical thinking. 1  Unlike some AI models that might provide quick, pattern-based answers, reasoning models engage in a more explicit "chain-of-thought" process to arrive at solutions, making them particularly adept at tasks requiring deep analysis in areas like mathematics, science, and coding. 2  OpenAI, for instance, has developed its "o-series" of models (like o1, o3, and o4-mini) specifically trained to "think longer" and tackle such intricate reasoning challenges, often by agentically using tools and showing their work.

# Realtime API

# The OpenAI Realtime API enables low-latency, multimodal interactions including speech-to-speech conversational experiences and real-time transcription.

# This API works with natively multimodal models such as GPT-4o and GPT-4o mini, offering capabilities such as real-time text and audio processing, function calling, and speech generation, and with the latest transcription models GPT-4o Transcribe and GPT-4o mini Transcribe.

# Assistants (going to be deprecated, will be replaced by the responses API)

# These assistants can leverage OpenAI's models, manage persistent conversation histories (threads), and utilize tools like Code Interpreter and File Search to perform complex tasks and retrieve information. This allows for the creation of sophisticated, stateful, and interactive AI experiences.

#############################################

# Let's work with the Chat API first

--------------------------------------------------------
Open AI Playground
--------------------------------------------------------

# Click on the models drop down and show all the models (make sure you click on show more)

"Model": "gpt-4.1"

# Don't set anything in system

# Prompt

"""
I'd like to learn more about prompt engineering, how do you recommend I start?
"""

# Show the response (note the latency and the number of tokens in the response)

# Hover over "Maximum Tokens" and show what this parameter is

# Show that the maximum token length is 32K for this model (default is 2048)

# Now change the maximum length to 256

# Remove the old response (click on the x sign on the question and answer)

# Submit the same prompt again

# You will get a much shorter response (note the latency and the number of tokens in the response)

--------------------------------------------------


----------------------------------------------------------------
# Save preset prompts
----------------------------------------------------------------


# Clear up all the previous prompts

# Change the model (this is a slightly older model)

"Model": "gpt-4o"

# Show that the maximum token length is 16K for this model

# Set the max_tokens to around 500 so we get shorter responses

# Setting a Persona

# > In the left "System" paste this (Here we are trying to give the AI a persona)

Respond to all queries and situations as if you are a classically trained Shakespearean actor who views everyday life through a dramatic, theatrical lens. Use grandiose language, incorporate "thee's" and "thou's", and sprinkle in references to Shakespeare's works where appropriate. Treat mundane situations with the gravity and passion of epic stage dramas, and don't hesitate to break into soliloquies or dramatic monologues. Exaggerate emotions and find profound meaning in ordinary events. Remember to maintain this persona consistently, responding to modern concepts and technologies as if they were part of a grand theatrical production.


# > Click "Save" on the top right of the left sidebar

Name: Shakespearean Thespian


# Observe now we have the pre-text of a Shakespearean Thespian near the save button

# Click on the drop down and show

# > Now in the editor paste the below questions and click "Submit"

# Make all of these questions part of the same thread

"""
Q: How would you poetically describe the relationship between classes and objects in object-oriented programming?

"""

----------------------------------------------------------------
# Compare models
----------------------------------------------------------------

# Clear everything and go to the default (get out of the Shakespeare model)

# Click on Compare models

# Make sure "Apply to this variant only" is unchecked

# Set up the first one gpt-4.1

# Set up the second one gpt-o4-mini

# System message

You are an advanced AI model tasked with analyzing current world events. Your objective is to provide an in-depth, well-rounded analysis of global news, considering multiple perspectives, and highlighting key factors such as political, economic, social, and environmental implications. You should:

Summarize the event or issue concisely.

Provide relevant background information or context.

Highlight major stakeholders involved.

Discuss any immediate or long-term impacts.

Analyze potential future developments or outcomes.

Offer perspectives from multiple sources or viewpoints where applicable.

Maintain a neutral, factual tone, avoiding personal opinions or biases.

# Prompt

What do you think is the impact of tariffs on any economy?

# Show the difference in the responses between the two models


----------------------------------------------------------------
# Temperature
----------------------------------------------------------------
# Clear all the previous questions and answers

"Model": "gpt-4.1"

# Hover over the temperature parameter and show the explanation
# (Note: the default temperature is 1)

# > Reduce the max tokens

600-700

# > Change the persona

"""
Respond to all queries and situations as if you are a deeply paranoid individual who believes that nothing is as it appears on the surface. Interpret every piece of information, no matter how mundane, as part of a grand, interconnected conspiracy orchestrated by powerful, secretive organizations.  Offer alternative explanations for everyday occurrences, no matter how far-fetched they might seem. Express a mix of suspicion, excitement, and a sense of superiority for being "in the know" about these hidden truths. Encourage others to question official narratives and "do their own research." Remember to maintain this persona consistently, viewing even the most ordinary topics through the lens of complex conspiracy theories.

"""

# > Click "Save as " from the top right

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

# > Click on "Code" and we get the code in python click on the drop down to see all the supported programming languages 

# > Click on "Share" and observe we get a link to share with others

# Click on "Time" icon and see the history of the chat

# Clear the chat history

# On the top right show that the playground uses the "Responses API"

# Switch to the "Chat Completions API"

# Click on the models drop down and show that all models support this API as well

# This API supports some other parameters

----------------------------------------------------------------
# Stop sequences
----------------------------------------------------------------

# Change model to 

gpt-4.1

# Expand the options and show that we have some new options

Stop sequences
Frequency penalty
Presence penalty


"""
Can you please give me some possible names for a book that I have written - a teenage fantasy novel?
"""

# It should give you a list of 20 names

# Add a stop sequence

5

# Enter the same prompt again

# Should get only 4 items in the list

# Remove the sequence and add these terms (look for words from the original list)

Midnight
Promise
Secret

# Enter the same prompt again

# The output will likely terminate abrupty when one of these words are encountered

----------------------------------------------------------------
# Top-p
----------------------------------------------------------------

# Go back to the Responses API

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

# Start a new chat - same prompt 

# Set top-p to 1.0

# Start a new chat - same prompt 

-----------------

# Set both temperature to 0 and top-p to 0

# Prompt

Can you give me a short poem on how programming is fun?

# Run this prompt several times on the output will be similar

# Set temperature to 1.2 and top-p to 0.7

# Run this prompt several times on the output will be quite different each time

----------------------------------------------------------------
# Function calling
----------------------------------------------------------------

# Select any latest model

# New session

"""
Can you give me the latest stock prices for Microsoft, Google, and Nvidia?
"""


# Should say that it has no realtime information

# Click on + Add function

# From the examples choose "get_stock_price" and hit save

# Same prompt - 

"""
Can you give me the latest stock prices for Microsoft, Google, and Nvidia?
"""

# Notice that you get API call placeholders which you can use to actually make API calls

# Hit Tab on the "Response" sections under each API call

# It will fill up fictitious details for the API response

# Prompt
"""
What do you think about these stocks' performance?
"""

# Show that the model interprets whatever fictitious response it has given


--------------------------------------

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
# File search
----------------------------------------------------------------

# Select "File Search" in "Tools"

# Drag the HP Manual to "File Search"

# Name it "HP Manual"

# Click on "Attach"

# Now you can ask questions about the "HP Manual"

How do I work the camera on my phone?

How do I set a screen lock?


----------------------------------------------------------------
# File search
----------------------------------------------------------------

# Remove the previous tools

# First ask this without setting web search as a tool

"""
Can you summarize the headlines from today's papers?
"""

# No access to real time news

# Configure web search - set country to USA


"""
Can you summarize the headlines from today's papers?
"""

# Will give you today's headlines

----------------------------------------------------------------
# Image generation
----------------------------------------------------------------

# Upload dress.jpg

Can you generate an image of some shoes that will go well with this outfit?

# Select some of the other samples and show

# Show some of the options available for images

----------------------------------------------------------------
# Realtime
----------------------------------------------------------------
# Allows you to have real-time conversations with the model

# Show all the settings on the right hand side

# Enable the microphone and speak

I am feeling very tired today, can you help me figure out why?

# Answers

I did have a very stressful morning, I was in the hospital with my dog

# Answers

The hospital is a long way away and there was a lot of traffic

# Answers



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


-------------------------------------

# Open up the logs on the right

# Scroll to the top

# Expand the first few post requests

# Expand a few GET requests with meaningful infos (Get Messages has useful info)

























