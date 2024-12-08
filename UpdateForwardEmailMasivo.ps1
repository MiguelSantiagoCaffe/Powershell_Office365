Import-Csv "C:\Users\TICZEGEL\Desktop\UpdateForwardEmailMasivo.csv" | ForEach-Object {
    Set-Mailbox -Identity $_.Identity -ForwardingSmtpAddress $_.ForwardingAddress -Force
}
