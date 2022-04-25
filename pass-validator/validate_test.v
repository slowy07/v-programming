module passwordvalidator

fn test_remove_more_than_two() {
	assert remove_more_than_two('12345678', '0123456789') == '12'
	assert remove_more_than_two('abcqwertyabc', 'qwertyuiop') == 'abcqwabc'
	assert remove_more_than_two('', '') == ''
	assert remove_more_than_two('', '12345') == ''
}

fn test_remove_repeating_chars() {
	mut actual := remove_more_than_two_repeating_chars('aaaa')
	mut expected := 'aa'
	assert actual == expected

	actual = remove_more_than_two_repeating_chars('bbbbbbbaaaaaaaaa')
	expected = 'bbaa'
	assert actual == expected

	actual = remove_more_than_two_repeating_chars('ab')
	expected = 'ab'
	assert actual == expected

	actual = remove_more_than_two_repeating_chars('')
	expected = ''
	assert actual == expected
}
