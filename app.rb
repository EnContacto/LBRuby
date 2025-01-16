require 'sinatra'
require 'date'

def days_until_christmas
  today = Date.today
  christmas = Date.new(today.year, 12, 25)
  (christmas - today).to_i
end

# Principal Path
get '/' do
  # Get actual time
  today = Date.today
  day_of_week = today.strftime("%A")  # Today
  current_date = today.strftime("%B %d, %Y")  # Date


  days_left = days_until_christmas

 "<html>
    <head>
      <title>Current Date and Days Until Christmas</title>
      <style>
        body {
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          height: 100vh;
          margin: 0;
          font-family: Arial, sans-serif;
          text-align: center;
          background-color: #f3f4f6;
        }
        h1 {
          font-size: 3em;
          margin: 0;
        }
        p {
          font-size: 1.5em;
          margin-top: 10px;
        }
      </style>
    </head>
    <body>
      <div>
        <h1>Today is #{day_of_week}, #{current_date}</h1>
        <p>There are #{days_left} days left until Christmas.</p>
      </div>
    </body>
  </html>"
end


set :bind, '0.0.0.0'
set :port, 4568