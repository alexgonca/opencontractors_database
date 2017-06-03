# open.contractors database

The main script in this repository is `first_import.sh`.
When executed, it will:
- download all the necessary data from _usaspending.gov_ and
- call Python and SQL scripts to initialize the database with empty tables, clean and
import the data into PostgreSQL.

Scripts were written with the premise that the user
will provide a file with database credentials according
to [this specification](https://www.postgresql.org/docs/current/static/libpq-pgpass.html).

It is useful to understand the [difference between full and delta files](https://www.usaspending.gov/DownloadCenter/Pages/dataarchives.aspx).

The script `first_import.sh` downloads full files from May 2015
(first month that they are available)
and all delta files from then on.

The script `monthly_import.sh` can be executed on the 16th of every month to keep the database up-to-date.
It downloads the last delta files and imports them into the database.