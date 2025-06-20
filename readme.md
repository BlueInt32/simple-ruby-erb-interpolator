# Output ruby interpolated file from template and data

## How to use

1. Make sure you have ruby installed with `ruby -v`

2. Create a template file with extension `.erb`, e.g. [tpl.erb](./tpl.erb)

   Note about blank lines: interpolations lines ending with `-%>` instead of `%>` will prevent adding the blank line in the generated

3. Create a data file exposing a global variable `$data` (in ruby, `$` means "global variable"), e.g. [data.rb](./data.rb)

4. Run the interpolator:

```
ruby interpolate.rb tpl.erb data.rb
```
