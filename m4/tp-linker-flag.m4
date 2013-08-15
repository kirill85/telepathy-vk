<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns='http://www.w3.org/1999/xhtml' xml:lang='en' lang='en'>
<head>
<title>telepathy/telepathy-idle - IRC connection manager for Telepathy</title>
<meta name='generator' content='cgit v0.9.0.2-2-gbebe'/>
<meta name='robots' content='index, nofollow'/>
<link rel='stylesheet' type='text/css' href='http://cgit.freedesktop.org/cgit.css'/>
<link rel='alternate' title='Atom feed' href='http://cgit.freedesktop.org/telepathy/telepathy-idle/atom/m4/tp-linker-flag.m4?h=master' type='application/atom+xml'/>
</head>
<body>
<div id='cgit'><table id='header'>
<tr>
<td class='logo' rowspan='2'><a href='/'><img src='http://cgit.freedesktop.org/logo.png' alt='cgit logo'/></a></td>
<td class='main'><a href='/'>index</a> : <a title='telepathy/telepathy-idle' href='/telepathy/telepathy-idle/'>telepathy/telepathy-idle</a></td><td class='form'><form method='get' action=''>
<select name='h' onchange='this.form.submit();'>
<option value='master' selected='selected'>master</option>
</select> <input type='submit' name='' value='switch'/></form></td></tr>
<tr><td class='sub'>IRC connection manager for Telepathy</td><td class='sub right'>root</td></tr></table>
<table class='tabs'><tr><td>
<a href='/telepathy/telepathy-idle/'>summary</a><a href='/telepathy/telepathy-idle/refs/'>refs</a><a href='/telepathy/telepathy-idle/log/m4/tp-linker-flag.m4'>log</a><a class='active' href='/telepathy/telepathy-idle/tree/m4/tp-linker-flag.m4'>tree</a><a href='/telepathy/telepathy-idle/commit/m4/tp-linker-flag.m4'>commit</a><a href='/telepathy/telepathy-idle/diff/m4/tp-linker-flag.m4'>diff</a></td><td class='form'><form class='right' method='get' action='/telepathy/telepathy-idle/log/m4/tp-linker-flag.m4'>
<select name='qt'>
<option value='grep'>log msg</option>
<option value='author'>author</option>
<option value='committer'>committer</option>
<option value='range'>range</option>
</select>
<input class='txt' type='text' size='10' name='q' value=''/>
<input type='submit' value='search'/>
</form>
</td></tr></table>
<div class='path'>path: <a href='/telepathy/telepathy-idle/tree/'>root</a>/<a href='/telepathy/telepathy-idle/tree/m4'>m4</a>/<a href='/telepathy/telepathy-idle/tree/m4/tp-linker-flag.m4'>tp-linker-flag.m4</a></div><div class='content'>blob: 8fd35068a27c4c1d9775574d8ebedd76c6b459cb (<a href='/telepathy/telepathy-idle/plain/m4/tp-linker-flag.m4'>plain</a>)
<table summary='blob content' class='blob'>
<tr><td class='linenumbers'><pre><a class='no' id='n1' name='n1' href='#n1'>1</a>
<a class='no' id='n2' name='n2' href='#n2'>2</a>
<a class='no' id='n3' name='n3' href='#n3'>3</a>
<a class='no' id='n4' name='n4' href='#n4'>4</a>
<a class='no' id='n5' name='n5' href='#n5'>5</a>
<a class='no' id='n6' name='n6' href='#n6'>6</a>
<a class='no' id='n7' name='n7' href='#n7'>7</a>
<a class='no' id='n8' name='n8' href='#n8'>8</a>
<a class='no' id='n9' name='n9' href='#n9'>9</a>
<a class='no' id='n10' name='n10' href='#n10'>10</a>
<a class='no' id='n11' name='n11' href='#n11'>11</a>
<a class='no' id='n12' name='n12' href='#n12'>12</a>
<a class='no' id='n13' name='n13' href='#n13'>13</a>
<a class='no' id='n14' name='n14' href='#n14'>14</a>
<a class='no' id='n15' name='n15' href='#n15'>15</a>
<a class='no' id='n16' name='n16' href='#n16'>16</a>
<a class='no' id='n17' name='n17' href='#n17'>17</a>
<a class='no' id='n18' name='n18' href='#n18'>18</a>
<a class='no' id='n19' name='n19' href='#n19'>19</a>
<a class='no' id='n20' name='n20' href='#n20'>20</a>
<a class='no' id='n21' name='n21' href='#n21'>21</a>
<a class='no' id='n22' name='n22' href='#n22'>22</a>
<a class='no' id='n23' name='n23' href='#n23'>23</a>
<a class='no' id='n24' name='n24' href='#n24'>24</a>
<a class='no' id='n25' name='n25' href='#n25'>25</a>
<a class='no' id='n26' name='n26' href='#n26'>26</a>
<a class='no' id='n27' name='n27' href='#n27'>27</a>
<a class='no' id='n28' name='n28' href='#n28'>28</a>
<a class='no' id='n29' name='n29' href='#n29'>29</a>
<a class='no' id='n30' name='n30' href='#n30'>30</a>
<a class='no' id='n31' name='n31' href='#n31'>31</a>
<a class='no' id='n32' name='n32' href='#n32'>32</a>
<a class='no' id='n33' name='n33' href='#n33'>33</a>
<a class='no' id='n34' name='n34' href='#n34'>34</a>
<a class='no' id='n35' name='n35' href='#n35'>35</a>
<a class='no' id='n36' name='n36' href='#n36'>36</a>
<a class='no' id='n37' name='n37' href='#n37'>37</a>
<a class='no' id='n38' name='n38' href='#n38'>38</a>
<a class='no' id='n39' name='n39' href='#n39'>39</a>
<a class='no' id='n40' name='n40' href='#n40'>40</a>
<a class='no' id='n41' name='n41' href='#n41'>41</a>
<a class='no' id='n42' name='n42' href='#n42'>42</a>
<a class='no' id='n43' name='n43' href='#n43'>43</a>
<a class='no' id='n44' name='n44' href='#n44'>44</a>
</pre></td>
<td class='lines'><pre><code>dnl A version of AS_COMPILER_FLAG that supports linker flags
dnl Based on:

dnl as-compiler-flag.m4 0.1.0
dnl autostars m4 macro for detection of compiler flags
dnl David Schleef &lt;ds@schleef.org&gt;
dnl $Id: as-compiler-flag.m4,v 1.1 2005/06/18 18:02:46 burgerman Exp $

dnl TP_LINKER_FLAG(LDFLAGS, ACTION-IF-ACCEPTED, [ACTION-IF-NOT-ACCEPTED])
dnl Tries to compile with the given LDFLAGS.
dnl
dnl Runs ACTION-IF-ACCEPTED if the compiler/linker for the currently selected
dnl AC_LANG can compile with the flags, and ACTION-IF-NOT-ACCEPTED otherwise.
dnl
dnl Note that LDFLAGS are passed to the linker via the compiler, so you
dnl should check for -Wl,--no-add-needed rather than --no-add-needed.

AC_DEFUN([TP_LINKER_FLAG],
[
  AC_MSG_CHECKING([to see if compiler/linker understand $1])

  save_LDFLAGS="$LDFLAGS"
  LDFLAGS="$LDFLAGS $1"

  AC_COMPILE_IFELSE(AC_LANG_SOURCE([]), [flag_ok=yes], [flag_ok=no])

  LDFLAGS="$save_LDFLAGS"

  if test "X$flag_ok" = Xyes ; then
    $2
    true
  else
    $3
    true
  fi
  AC_MSG_RESULT([$flag_ok])
])

dnl TP_ADD_LINKER_FLAG(VARIABLE, LDFLAGS)
dnl Append LDFLAGS to VARIABLE if the linker supports them.
AC_DEFUN([TP_ADD_LINKER_FLAG],
[
  TP_LINKER_FLAG([$2], [$1="[$]$1 $2"])
])
</code></pre></td></tr></table>
</div> <!-- class=content -->
<div class='footer'>generated  by cgit v0.9.0.2-2-gbebe at 2013-08-15 07:39:46 (GMT)</div>
</div> <!-- id=cgit -->
</body>
</html>
