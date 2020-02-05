def board
$win2.setpos(0, 0)
	$win2.addstr("             MORPION              ")
$win2.setpos(3, 0)	
	$win2.addstr("__________________________________")
$win2.setpos(4, 0)
	$win2.addstr("|1         |2         |3         |")
$win2.setpos(5, 0)
	$win2.addstr("|          |          |          |")
$win2.setpos(6, 0)
	$win2.addstr("|          |          |          |")
$win2.setpos(7, 0)
	$win2.addstr("|          |          |          |")
$win2.setpos(8, 0)
	$win2.addstr("|__________|__________|__________|")
$win2.setpos(9, 0)
	$win2.addstr("|4         |5         |6         |")
$win2.setpos(10, 0)
	$win2.addstr("|          |          |          |")
$win2.setpos(11, 0)
	$win2.addstr("|          |          |          |")
$win2.setpos(12, 0)
	$win2.addstr("|          |          |          |")
$win2.setpos(13, 0)
	$win2.addstr("|__________|__________|__________|")
$win2.setpos(14, 0)
	$win2.addstr("|7         |8         |9         |")
$win2.setpos(15, 0)
	$win2.addstr("|          |          |          |")
$win2.setpos(16, 0)
	$win2.addstr("|          |          |          |")
$win2.setpos(17, 0)
	$win2.addstr("|          |          |          |")
$win2.setpos(18, 0)
	$win2.addstr("|__________|__________|__________|")
	$win2.refresh
end

def image(num)
	case num
	when 1
		if $tour == 1
			$win2.setpos(5, 4)
				$win2.addstr("\\ /")
			$win2.setpos(6, 4)
				$win2.addstr(" \\ ")
			$win2.setpos(7, 4)
				$win2.addstr("/ \\")
				$win2.refresh()
		else
			$win2.setpos(5, 4)
				$win2.addstr(" o ")
			$win2.setpos(6, 4)
				$win2.addstr("( )")
			$win2.setpos(7, 4)
				$win2.addstr(" o ")
				$win2.refresh()
		end
	when 2
		if $tour == 1
			$win2.setpos(5, 15)
				$win2.addstr("\\ /")
			$win2.setpos(6, 15)
				$win2.addstr(" \\ ")
			$win2.setpos(7, 15)
				$win2.addstr("/ \\")
				$win2.refresh()
		else
			$win2.setpos(5, 15)
				$win2.addstr(" o ")
			$win2.setpos(6, 15)
				$win2.addstr("( )")
			$win2.setpos(7, 15)
				$win2.addstr(" o ")
				$win2.refresh()
		end
	when 3
		if $tour == 1
			$win2.setpos(5, 26)
				$win2.addstr("\\ /")
			$win2.setpos(6, 26)
				$win2.addstr(" \\ ")
			$win2.setpos(7, 26)
				$win2.addstr("/ \\")
				$win2.refresh()
		else
			$win2.setpos(5, 26)
				$win2.addstr(" o ")
			$win2.setpos(6, 26)
				$win2.addstr("( )")
			$win2.setpos(7, 26)
				$win2.addstr(" o ")
				$win2.refresh()
		end
	when 4
		if $tour == 1
			$win2.setpos(10, 4)
				$win2.addstr("\\ /")
			$win2.setpos(11, 4)
				$win2.addstr(" \\ ")
			$win2.setpos(12, 4)
				$win2.addstr("/ \\")
				$win2.refresh()
		else
			$win2.setpos(10, 4)
				$win2.addstr(" o ")
			$win2.setpos(11, 4)
				$win2.addstr("( )")
			$win2.setpos(12, 4)
				$win2.addstr(" o ")
				$win2.refresh()
		end
	when 5
		if $tour == 1
			$win2.setpos(10, 15)
				$win2.addstr("\\ /")
			$win2.setpos(11, 15)
				$win2.addstr(" \\ ")
			$win2.setpos(12, 15)
				$win2.addstr("/ \\")
				$win2.refresh()
		else
			$win2.setpos(10, 15)
				$win2.addstr(" o ")
			$win2.setpos(11, 15)
				$win2.addstr("( )")
			$win2.setpos(12, 15)
				$win2.addstr(" o ")
				$win2.refresh()
		end
	when 6
		if $tour == 1
			$win2.setpos(10, 26)
				$win2.addstr("\\ /")
			$win2.setpos(11, 26)
				$win2.addstr(" \\ ")
			$win2.setpos(12, 26)
				$win2.addstr("/ \\")
				$win2.refresh()
		else
			$win2.setpos(10, 26)
				$win2.addstr(" o ")
			$win2.setpos(11, 26)
				$win2.addstr("( )")
			$win2.setpos(12, 26)
				$win2.addstr(" o ")
				$win2.refresh()
		end
	when 7
		if $tour == 1
			$win2.setpos(15, 4)
				$win2.addstr("\\ /")
			$win2.setpos(16, 4)
				$win2.addstr(" \\ ")
			$win2.setpos(17, 4)
				$win2.addstr("/ \\")
				$win2.refresh()
		else
			$win2.setpos(15, 4)
				$win2.addstr(" o ")
			$win2.setpos(16, 4)
				$win2.addstr("( )")
			$win2.setpos(17, 4)
				$win2.addstr(" o ")
				$win2.refresh()
		end
	when 8
		if $tour == 1
			$win2.setpos(15, 15)
				$win2.addstr("\\ /")
			$win2.setpos(16, 15)
				$win2.addstr(" \\ ")
			$win2.setpos(17, 15)
				$win2.addstr("/ \\")
				$win2.refresh()
		else
			$win2.setpos(15, 15)
				$win2.addstr(" o ")
			$win2.setpos(16, 15)
				$win2.addstr("( )")
			$win2.setpos(17, 15)
				$win2.addstr(" o ")
				$win2.refresh()
		end
	when 9
		if $tour == 1
			$win2.setpos(15, 26)
				$win2.addstr("\\ /")
			$win2.setpos(16, 26)
				$win2.addstr(" \\ ")
			$win2.setpos(17, 26)
				$win2.addstr("/ \\")
				$win2.refresh()
		else
			$win2.setpos(15, 26)
				$win2.addstr(" o ")
			$win2.setpos(16, 26)
				$win2.addstr("( )")
			$win2.setpos(17, 26)
				$win2.addstr(" o ")
				$win2.refresh()
		end
	end
end

