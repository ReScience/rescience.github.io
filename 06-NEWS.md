---
layout: page
menutitle: NEWS
permalink: /news/
---


# News

<ul class="post-list">
  {% for post in site.posts limit:3 %}
  {% if post.type == "news" %}
  <li>
    <h2>{{ post.title }}</h2>
    <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
    {{ post.content }}
  </li>
  {% endif %}
  {% endfor %}
</ul>



# Archives

<ul>
{% for post in site.posts  %}
  {%if post.type == "news" %}
  <li><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a>
  • 
  <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span><br/>
  </li>
  {% endif %}
{% endfor %}
</ul>
