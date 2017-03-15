defmodule DionysosWeb.ActivityView do
  use DionysosWeb.Web, :view

  def format_date(date) do
    {{y, m, d}, {h,min,s}} = Ecto.DateTime.to_erl(date)
    "#{d}/#{m} kl #{h}:#{min}"
  end
end