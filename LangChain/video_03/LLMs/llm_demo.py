from langchain_openai import OpenAI
from dotenv import load_dotenv 

# we load the environment variables
load_dotenv()

# we create an instance of the LLM by passing the model name
llm = OpenAI(model="gpt-3.5-turbo-instruct")

# we communicate with the LLM by calling the invoke method
result = llm.invoke("What is the capital of Pakistan?")
