defmodule DionysosWeb.ActivityView do
  use DionysosWeb.Web, :view

  def format_date(date) do
    {{_,month,day}, {hh,mm,ss}} = Ecto.DateTime.to_erl(date)
    "#{day}/#{month} kl #{hh}:#{mm}"
    #|> Timex.DateTime.from_erl
    #|> Timex.DateFormat.format!("{h12}:{0m} {am}")

  end
end