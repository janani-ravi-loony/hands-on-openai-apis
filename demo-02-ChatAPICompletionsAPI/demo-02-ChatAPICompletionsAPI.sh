###################################################
Install and set up Open AI
###################################################

# Go to this URL
https://platform.openai.com/docs/quickstart

# Show that it has steps for 

cURL
python
NodeJS

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

# https://platform.openai.com/docs/api-reference/chat/object

curl https://api.openai.com/v1/chat/completions \
-H "Content-Type: application/json"   \
-H "Authorization: Bearer $OPENAI_API_KEY" \
-d '{
    "model": "gpt-3.5-turbo",
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
    "model": "gpt-4-turbo",
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

# Explain the details in the result (note the system fingerprint)


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


----------------------------------------------
# Set up virtual environment
----------------------------------------------
# Behind the scenes

# Required libraries in virtual environment

pip install --upgrade openai

openai --version

pip install pandas matplotlib

# Start jupyter notebook

jupyter notebook

# Open notebook

demo-02-ChatAPICompletionsAPI

# IMPORTANT: Make sure the notebooks is using the openai_venv virtual environment
# Go to Kernel -> Change kernel to set the virtual environment
# Will need to do this for each notebook












