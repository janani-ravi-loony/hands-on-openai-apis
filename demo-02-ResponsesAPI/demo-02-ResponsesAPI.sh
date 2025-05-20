###################################################
Install and set up Open AI
###################################################

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

# Go to this URL
https://platform.openai.com/docs/quickstart

# Show that it has steps for 

cURL
python
javascript

# Let's show that you can hit the API using cURL

# On the terminal

curl --version

# Set up the API key

# Go the the Open AI page

# Click on API keys on the left sidebar

Name: hands-on-openai-apis

# Create and copy the key over

export OPENAI_API_KEY='your-api-key-here'

----------------------------------------------
# Make API requests using cURL
----------------------------------------------


# Now let's make a curl request to the API
# Replace $OPENAI_API_KEY with the actual API token when you make the request


# Let's retrieve all the models available (replace the key in the header)

curl https://api.openai.com/v1/models \
  -H "Authorization: Bearer $OPENAI_API_KEY"

# Show large number of models returned

# Let's retrieve the details of some specific models


curl https://api.openai.com/v1/models/dall-e-3 \
  -H "Authorization: Bearer $OPENAI_API_KEY"


# Now let's send a prompt using the API

# Responses API

curl https://api.openai.com/v1/responses \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $OPENAI_API_KEY" \
    -d '{
        "model": "gpt-4.1",
        "input": "Can you explain how machine learning works?"
    }'


# Responses API with content roles

curl https://api.openai.com/v1/responses \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $OPENAI_API_KEY" \
    -d '{
        "model": "gpt-4.1",
        "input": [
            {
                "role": "developer", 
                "content": "You are a teaching assistant for a programming course"
            },
            {
                "role": "user",
                "content": "Can you explain classes in Java?"
            }
        ]
    }'


# Ask the same question of the completions API
# https://platform.openai.com/docs/api-reference/chat/object

curl https://api.openai.com/v1/chat/completions \
-H "Content-Type: application/json"   \
-H "Authorization: Bearer $OPENAI_API_KEY" \
-d '{
    "model": "gpt-4o",
    "messages": [
      {
        "role": "user",
        "content": "Can you explain how reinforcement learning works?"
      }
    ]
  }'


# Explain the details in the result (no system fingerprint)


curl https://api.openai.com/v1/chat/completions \
-H "Content-Type: application/json"   \
-H "Authorization: Bearer $OPENAI_API_KEY" \
-d '{
    "model": "gpt-4o",
    "messages": [
      {
        "role": "system",
        "content": "You are a teaching assistant for a programming course"
      },
      {
        "role": "user",
        "content": "Can you please explain the init() method in Python?"
      }
    ]
  }'


# This is how the chat completions API maintains conversation state - notice how the follow up question is answered correctly?

# The responses API can maintain conversation state in this way and using a different technique as well - we will see that in the Python

curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d '{
    "model": "gpt-4",
    "messages": [
      {
        "role": "system",
        "content": "You are a helpful assistant."
      },
      {
        "role": "user",
        "content": "Who won the football world cup in 1990?"
      },
      {
        "role": "assistant",
        "content": "Germany won the football world cup in 1990."
      },
      {
        "role": "user",
        "content": "Who were their opponents? Can you describe the final?"
      }
    ]
  }'











