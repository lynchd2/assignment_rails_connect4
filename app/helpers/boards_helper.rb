module BoardsHelper
  def color(space)
    if space == []
      "empty"
    else
      space["color"]
    end
  end
end
