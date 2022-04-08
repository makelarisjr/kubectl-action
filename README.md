## Example usage

```yaml
uses: makelarisjr/kubectl-action@v1
with:
  config: ${{ secrets.KUBE_CONFIG }} # base64 encoded kubeconfig
  command: get pods
```
