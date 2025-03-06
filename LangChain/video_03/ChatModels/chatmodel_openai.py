from langchain_openai import ChatOpenAI
from dotenv import load_dotenv

# we load the environment variables
load_dotenv()
# temperature tells the model how creative it should be the values ranges from 0 to 1
# 0 means the model will be very conservative and 1 means the model will be very creative

# max_tokens tells the model how many tokens it should generate the value ranges from 1 to 4096
# tokens basically are words or characters

model = ChatOpenAI(model="gpt-3.5-turbo-instruct", temperature=0.5, max_tokens=10)

result = model.invoke("What is the capital of Pakistan?")
print(result.content)
# Islamabad