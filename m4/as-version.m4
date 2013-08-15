<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns='http://www.w3.org/1999/xhtml' xml:lang='en' lang='en'>
<head>
<title>telepathy/telepathy-idle - IRC connection manager for Telepathy</title>
<meta name='generator' content='cgit v0.9.0.2-2-gbebe'/>
<meta name='robots' content='index, nofollow'/>
<link rel='stylesheet' type='text/css' href='http://cgit.freedesktop.org/cgit.css'/>
<link rel='alternate' title='Atom feed' href='http://cgit.freedesktop.org/telepathy/telepathy-idle/atom/m4/as-version.m4?h=master' type='application/atom+xml'/>
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
<a href='/telepathy/telepathy-idle/'>summary</a><a href='/telepathy/telepathy-idle/refs/'>refs</a><a href='/telepathy/telepathy-idle/log/m4/as-version.m4'>log</a><a class='active' href='/telepathy/telepathy-idle/tree/m4/as-version.m4'>tree</a><a href='/telepathy/telepathy-idle/commit/m4/as-version.m4'>commit</a><a href='/telepathy/telepathy-idle/diff/m4/as-version.m4'>diff</a></td><td class='form'><form class='right' method='get' action='/telepathy/telepathy-idle/log/m4/as-version.m4'>
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
<div class='path'>path: <a href='/telepathy/telepathy-idle/tree/'>root</a>/<a href='/telepathy/telepathy-idle/tree/m4'>m4</a>/<a href='/telepathy/telepathy-idle/tree/m4/as-version.m4'>as-version.m4</a></div><div class='content'>blob: defc887e019289b24f0486c0714efdc9b1ff6cc3 (<a href='/telepathy/telepathy-idle/plain/m4/as-version.m4'>plain</a>)
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
<a class='no' id='n45' name='n45' href='#n45'>45</a>
<a class='no' id='n46' name='n46' href='#n46'>46</a>
<a class='no' id='n47' name='n47' href='#n47'>47</a>
<a class='no' id='n48' name='n48' href='#n48'>48</a>
<a class='no' id='n49' name='n49' href='#n49'>49</a>
<a class='no' id='n50' name='n50' href='#n50'>50</a>
<a class='no' id='n51' name='n51' href='#n51'>51</a>
<a class='no' id='n52' name='n52' href='#n52'>52</a>
<a class='no' id='n53' name='n53' href='#n53'>53</a>
<a class='no' id='n54' name='n54' href='#n54'>54</a>
<a class='no' id='n55' name='n55' href='#n55'>55</a>
<a class='no' id='n56' name='n56' href='#n56'>56</a>
<a class='no' id='n57' name='n57' href='#n57'>57</a>
<a class='no' id='n58' name='n58' href='#n58'>58</a>
<a class='no' id='n59' name='n59' href='#n59'>59</a>
<a class='no' id='n60' name='n60' href='#n60'>60</a>
<a class='no' id='n61' name='n61' href='#n61'>61</a>
<a class='no' id='n62' name='n62' href='#n62'>62</a>
<a class='no' id='n63' name='n63' href='#n63'>63</a>
<a class='no' id='n64' name='n64' href='#n64'>64</a>
<a class='no' id='n65' name='n65' href='#n65'>65</a>
<a class='no' id='n66' name='n66' href='#n66'>66</a>
</pre></td>
<td class='lines'><pre><code>dnl as-version.m4 0.1.0

dnl autostars m4 macro for versioning

dnl Thomas Vander Stichele &lt;thomas at apestaart dot org&gt;

dnl $Id: as-version.m4,v 1.1 2005/06/18 18:02:46 burgerman Exp $

dnl AS_VERSION(PACKAGE, PREFIX, MAJOR, MINOR, MICRO, NANO,
dnl            ACTION-IF-NO-NANO, [ACTION-IF-NANO])

dnl example
dnl AS_VERSION(gstreamer, GST_VERSION, 0, 3, 2,)
dnl for a 0.3.2 release version

dnl this macro
dnl - defines [$PREFIX]_MAJOR, MINOR and MICRO
dnl - if NANO is empty, then we're in release mode, else in cvs/dev mode
dnl - defines [$PREFIX], VERSION, and [$PREFIX]_RELEASE
dnl - executes the relevant action
dnl - AC_SUBST's PACKAGE, VERSION, [$PREFIX] and [$PREFIX]_RELEASE
dnl   as well as the little ones
dnl - doesn't call AM_INIT_AUTOMAKE anymore because it prevents
dnl   maintainer mode from running ok
dnl
dnl don't forget to put #undef [$2] and [$2]_RELEASE in acconfig.h
dnl if you use acconfig.h

AC_DEFUN([AS_VERSION],
[
  PACKAGE=[$1]
  [$2]_MAJOR=[$3]
  [$2]_MINOR=[$4]
  [$2]_MICRO=[$5]
  NANO=[$6]
  [$2]_NANO=$NANO
  if test "x$NANO" = "x" || test "x$NANO" = "x0";
  then
      AC_MSG_NOTICE(configuring [$1] for release)
      VERSION=[$3].[$4].[$5]
      [$2]_RELEASE=1
      dnl execute action
      ifelse([$7], , :, [$7])
  else
      AC_MSG_NOTICE(configuring [$1] for development with nano $NANO)
      VERSION=[$3].[$4].[$5].$NANO
      [$2]_RELEASE=0.`date +%Y%m%d.%H%M%S`
      dnl execute action
      ifelse([$8], , :, [$8])
  fi

  [$2]=$VERSION
  AC_DEFINE_UNQUOTED([$2], "$[$2]", [Define the version])
  AC_SUBST([$2])
  AC_DEFINE_UNQUOTED([$2]_RELEASE, "$[$2]_RELEASE", [Define the release version])
  AC_SUBST([$2]_RELEASE)

  AC_SUBST([$2]_MAJOR)
  AC_SUBST([$2]_MINOR)
  AC_SUBST([$2]_MICRO)
  AC_SUBST([$2]_NANO)
  AC_DEFINE_UNQUOTED(PACKAGE, "$PACKAGE", [Define the package name])
  AC_SUBST(PACKAGE)
  AC_DEFINE_UNQUOTED(VERSION, "$VERSION", [Define the version])
  AC_SUBST(VERSION)
])
</code></pre></td></tr></table>
</div> <!-- class=content -->
<div class='footer'>generated  by cgit v0.9.0.2-2-gbebe at 2013-08-15 07:39:46 (GMT)</div>
</div> <!-- id=cgit -->
</body>
</html>
