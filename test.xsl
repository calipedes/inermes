<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <link rel="stylesheet" type="text/css" href="./styles.css"/>
  </head>

  <body>


    <div class="nav-bar">
       <span class="nav-prev">
         <a href="{test/nav/prev/link}"><xsl:text>&lt;&lt;   </xsl:text><xsl:value-of select="test/nav/prev/name"/> </a>
       </span>
       <span class="nav-next">
         <a href="{test/nav/next/link}"><xsl:value-of select="test/nav/next/name"/><xsl:text>   &gt;&gt;</xsl:text></a>
       </span>
    </div>

    <h1><xsl:value-of select="test/title"/></h1>
    <h2><xsl:value-of select="test/subtitle"/></h2>

    <form method="POST">

      <ol>
      <xsl:for-each select="test/question">
        <li><fieldset>
          <legend><xsl:value-of select="q_text"/></legend>

          <div class="answers">
            <xsl:for-each select="answer">

              <div class="answer">
                <xsl:choose>
                  <xsl:when test="correct">
                    <input class="correct" type="radio" name="{generate-id(..)}"
                           id="{generate-id()}" value="{generate-id()}" required="true"></input>
                  </xsl:when>
                  <xsl:otherwise>
                    <input class="wrong" type="radio" name="{generate-id(..)}"
                           id="{generate-id()}" value="{generate-id()}" required="true"></input>
                  </xsl:otherwise>
                </xsl:choose>

                <label for="{generate-id()}" class="answer_text"><xsl:value-of select="."/></label>

                <xsl:choose>
                  <xsl:when test="correct">
                    <span class="checkmark">✔</span>
                  </xsl:when>
                  <xsl:otherwise>
                    <span class="x-mark">✘</span>
                  </xsl:otherwise>
                </xsl:choose>

              </div>

            </xsl:for-each>
          </div>

        </fieldset></li>
      </xsl:for-each>

      </ol>
    </form>

    <div class="nav-bar">
       <span class="nav-prev">
         <a href="{test/nav/prev/link}"><xsl:text>&lt;&lt;   </xsl:text><xsl:value-of select="test/nav/prev/name"/> </a>
       </span>
       <span class="nav-next">
         <a href="{test/nav/next/link}"><xsl:value-of select="test/nav/next/name"/><xsl:text>   &gt;&gt;</xsl:text></a>
       </span>
    </div>

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>


