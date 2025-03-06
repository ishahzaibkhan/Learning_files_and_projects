from langchain_anthropic import ChatAnthropic
from dotenv import load_dotenv

load_dotenv()

model = ChatAnthropic(model="claud-3-5-sonnet", temperature=0.5, max_tokens=10)

result = model.invoke("What is the capital of Pakistan?")
print(result.content)