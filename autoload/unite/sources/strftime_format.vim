let s:unite_source = {
			\ 'name': 'strftime_format',
			\ 'description': 'Candidates from strftme formats',
			\
			\ }

function! s:unite_source.gather_candidates(args, context)
	let formats = [
				\ ['%A', 'day of week'],
				\ ['%a', 'day of week (omitted)'],
				\ ['%B', 'month name'],
				\ ['%b', 'month name (omitted)'],
				\ ['%C', 'century'],
				\ ['%c', 'standard datetime'],
				\ ['%D', 'bad-shit americanized notation'],
				\ ['%d', 'day of the month'],
				\ ['%E', ''],
				\ ['%e', 'day of the month (spaced)'],
				\ ['%F', 'ISO8601 date'],
				\ ['%G', 'week-based year'],
				\ ['%g', 'week-based year (omitted)'],
				\ ['%H', 'hour in 24-hour'],
				\ ['%h', 'same as %%b'],
				\ ['%I', 'hour in 12-hour'],
				\ ['%j', 'day of the year'],
				\ ['%k', 'hour in 24-hour (spaced)'],
				\ ['%l', 'hour in 12-hour (spaced)'],
				\ ['%M', 'minute'],
				\ ['%m', 'month'],
				\ ['%n', 'newline'],
				\ ['%O', ''],
				\ ['%P', 'a.m. or p.m. (in lower case)'],
				\ ['%p', 'a.m. or p.m.'],
				\ ['%R', 'time (without seconds)'],
				\ ['%r', 'time with a.m. or p.m.'],
				\ ['%S', 'seconds'],
				\ ['%s', 'seconds since the Epoch'],
				\ ['%T', 'time'],
				\ ['%t', 'tab character'],
				\ ['%U', 'week number of the year'],
				\ ['%u', 'weekday number (from Monday)'],
				\ ['%V', 'week number of the year'],
				\ ['%W', 'week number of the year (from Monday)'],
				\ ['%w', 'weekday number'],
				\ ['%X', 'time'],
				\ ['%x', 'date'],
				\ ['%Y', 'year'],
				\ ['%y', 'year (omitted)'],
				\ ['%Z', 'time zone'],
				\ ['%z', 'offset'],
				\ ['%+', 'date(1)'],
				\ ['%%', '%'],
				\]
	return map(formats, '{
				\ "word": v:val[0],
				\ "abbr": v:val[0] . " [" . v:val[1] . "] (" . strftime(v:val[0]) . ")",
				\ "kind": "word",
				\ }')
endfunction

function! unite#sources#strftime_format#define()
	return s:unite_source
endfunction

