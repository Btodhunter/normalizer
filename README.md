# Normalizer

Simple Python CSV normalization tool that reads from stdin and outputs normalized CSV to stdout.

**Usage:**
```bash
./normalizer < input.csv > output.csv
```

**Docker Usage:**
```bash
# Build the Docker image
docker build -t normalizer .

# Run with input/output redirection
docker run -i normalizer < input.csv > output.csv

# Or with stdin pipe
cat input.csv | docker run -i normalizer > output.csv
```

**Normalizations performed:**
- UTF-8 character validation and replacement
- Timestamp conversion from US/Pacific to US/Eastern in RFC3339 format
- ZIP codes padded to 5 digits
- FullName converted to uppercase
- Duration columns (HH:MM:SS.MS) converted to total seconds
- TotalDuration calculated as sum of FooDuration + BarDuration
- Invalid rows dropped with warnings to stderr

## Requirements

- Python 3.9+ (for zoneinfo support)
- No external dependencies (uses standard library only)
