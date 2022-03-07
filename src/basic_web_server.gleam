import gleam/io
import gleam/bit_builder
import gleam/http/elli
import gleam/http/response

pub fn my_service(_req) {
  let body = bit_builder.from_string("Hello, world!")

  response.new(200)
  |> response.set_body(body)
}

pub fn main() {
  elli.become(my_service, on_port: 3000)
}