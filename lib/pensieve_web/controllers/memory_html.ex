defmodule PensieveWeb.MemoryHTML do
  use PensieveWeb, :html
  import PensieveWeb.MemoryInformation
  alias Pensieve.Memories.Memory

  embed_templates "/memory_html/*"

  def memory_inserted_at(%Memory{inserted_at: timestamp}) do
    Calendar.strftime(timestamp, "%m/%d/%Y %I:%M%p")
  end
end
