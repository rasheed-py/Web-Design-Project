<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
    <title>Packages - Orbis Elite</title>
    <link rel="stylesheet" href="style.css"/>
    <style>
        .packages-hero {
            background: #111;
            padding: 60px 20px 40px;
            text-align: center;
        }
        .packages-hero h2 {
            color: #d4af37;
            font-size: 2.2rem;
            letter-spacing: 3px;
        }
        .packages-hero p {
            color: #aaa;
            margin-top: 10px;
        }
        .packages-wrap {
            padding: 40px 80px 60px;
        }
        .pkg-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 0.9rem;
        }
        .pkg-table th {
            background: #d4af37;
            color: black;
            padding: 13px 16px;
            text-align: left;
            letter-spacing: 1px;
        }
        .pkg-table td {
            padding: 12px 16px;
            border-bottom: 1px solid #1e1e1e;
            color: #bbb;
        }
        .pkg-table tr:hover td {
            background: #111;
            color: white;
        }
        .badge-available {
            color: #4caf50;
            font-weight: bold;
        }
        .badge-limited {
            color: #d4af37;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <header>
        <h1>Orbis Elite</h1>
        <nav>
            <a href="index.html">Home</a>
            <a href="destinations.html">Destinations</a>
            <a href="packages.xml" style="color:#d4af37; border-bottom:1px solid #d4af37; padding-bottom:2px;">Packages</a>
            <a href="contact.html">Contact</a>
        </nav>
    </header>

    <div class="packages-hero">
        <h2>Our Packages</h2>
        <p>Tailored luxury travel packages for every kind of explorer</p>
        <div class="gold-line"></div>
    </div>

    <div class="packages-wrap">
        <table class="pkg-table">
            <tr>
                <th>Package</th>
                <th>Destination</th>
                <th>Duration</th>
                <th>Price</th>
                <th>Includes</th>
                <th>Availability</th>
            </tr>
            <xsl:for-each select="packages/package">
            <tr>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="destination"/></td>
                <td><xsl:value-of select="duration"/></td>
                <td><xsl:value-of select="price"/></td>
                <td><xsl:value-of select="includes"/></td>
                <td>
                    <xsl:choose>
                        <xsl:when test="availability='Available'">
                            <span class="badge-available"><xsl:value-of select="availability"/></span>
                        </xsl:when>
                        <xsl:otherwise>
                            <span class="badge-limited"><xsl:value-of select="availability"/></span>
                        </xsl:otherwise>
                    </xsl:choose>
                </td>
            </tr>
            </xsl:for-each>
        </table>
    </div>

<footer>
    <p>© 2026 Orbis Elite. All rights reserved.</p>
    <p>
        <a href="contact.html" style="color:#777; text-decoration:none; margin: 0 10px;">Contact Us</a> |
        <a href="#" style="color:#777; text-decoration:none; margin: 0 10px;">Privacy Policy</a> |
        <a href="#" style="color:#777; text-decoration:none; margin: 0 10px;">Terms &amp; Conditions</a>
    </p>
</footer>

</body>
</html>
</xsl:template>

</xsl:stylesheet>